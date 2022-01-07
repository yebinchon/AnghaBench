
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct meson_mx_efuse_platform_data {int word_size; int name; } ;
struct TYPE_2__ {int read_only; int reg_read; int size; int word_size; int stride; struct meson_mx_efuse* priv; int * dev; int owner; int name; } ;
struct meson_mx_efuse {int nvmem; TYPE_1__ config; int core_clk; int base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int SZ_512 ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devm_kstrdup (int *,int ,int ) ;
 struct meson_mx_efuse* devm_kzalloc (int *,int,int ) ;
 int devm_nvmem_register (int *,TYPE_1__*) ;
 int meson_mx_efuse_read ;
 struct meson_mx_efuse_platform_data* of_device_get_match_data (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int meson_mx_efuse_probe(struct platform_device *pdev)
{
 const struct meson_mx_efuse_platform_data *drvdata;
 struct meson_mx_efuse *efuse;
 struct resource *res;

 drvdata = of_device_get_match_data(&pdev->dev);
 if (!drvdata)
  return -EINVAL;

 efuse = devm_kzalloc(&pdev->dev, sizeof(*efuse), GFP_KERNEL);
 if (!efuse)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 efuse->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(efuse->base))
  return PTR_ERR(efuse->base);

 efuse->config.name = devm_kstrdup(&pdev->dev, drvdata->name,
       GFP_KERNEL);
 efuse->config.owner = THIS_MODULE;
 efuse->config.dev = &pdev->dev;
 efuse->config.priv = efuse;
 efuse->config.stride = drvdata->word_size;
 efuse->config.word_size = drvdata->word_size;
 efuse->config.size = SZ_512;
 efuse->config.read_only = 1;
 efuse->config.reg_read = meson_mx_efuse_read;

 efuse->core_clk = devm_clk_get(&pdev->dev, "core");
 if (IS_ERR(efuse->core_clk)) {
  dev_err(&pdev->dev, "Failed to get core clock\n");
  return PTR_ERR(efuse->core_clk);
 }

 efuse->nvmem = devm_nvmem_register(&pdev->dev, &efuse->config);

 return PTR_ERR_OR_ZERO(efuse->nvmem);
}
