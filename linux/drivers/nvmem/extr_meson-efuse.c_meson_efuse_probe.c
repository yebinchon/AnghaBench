
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int stride; int word_size; unsigned int size; int reg_write; int reg_read; int name; struct device* dev; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int PTR_ERR_OR_ZERO (struct nvmem_device*) ;
 int SM_EFUSE_USER_MAX ;
 scalar_t__ clk_disable_unprepare ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_add_action_or_reset (struct device*,void (*) (void*),struct clk*) ;
 struct clk* devm_clk_get (struct device*,int *) ;
 struct nvmem_config* devm_kzalloc (struct device*,int,int ) ;
 struct nvmem_device* devm_nvmem_register (struct device*,struct nvmem_config*) ;
 int meson_efuse_read ;
 int meson_efuse_write ;
 scalar_t__ meson_sm_call (int ,unsigned int*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int meson_efuse_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct nvmem_device *nvmem;
 struct nvmem_config *econfig;
 struct clk *clk;
 unsigned int size;
 int ret;

 clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to get efuse gate");
  return ret;
 }

 ret = clk_prepare_enable(clk);
 if (ret) {
  dev_err(dev, "failed to enable gate");
  return ret;
 }

 ret = devm_add_action_or_reset(dev,
           (void(*)(void *))clk_disable_unprepare,
           clk);
 if (ret) {
  dev_err(dev, "failed to add disable callback");
  return ret;
 }

 if (meson_sm_call(SM_EFUSE_USER_MAX, &size, 0, 0, 0, 0, 0) < 0) {
  dev_err(dev, "failed to get max user");
  return -EINVAL;
 }

 econfig = devm_kzalloc(dev, sizeof(*econfig), GFP_KERNEL);
 if (!econfig)
  return -ENOMEM;

 econfig->dev = dev;
 econfig->name = dev_name(dev);
 econfig->stride = 1;
 econfig->word_size = 1;
 econfig->reg_read = meson_efuse_read;
 econfig->reg_write = meson_efuse_write;
 econfig->size = size;

 nvmem = devm_nvmem_register(&pdev->dev, econfig);

 return PTR_ERR_OR_ZERO(nvmem);
}
