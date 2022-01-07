
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int owner; int of_node; int * ops; int nr_resets; } ;
struct meson_audio_arb_data {TYPE_1__ rstc; int regs; int clk; int reset_bits; int lock; } ;


 int ARB_GENERAL_BIT ;
 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int axg_audio_arb_reset_bits ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct meson_audio_arb_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_controller_register (struct device*,TYPE_1__*) ;
 int meson_audio_arb_remove (struct platform_device*) ;
 int meson_audio_arb_rstc_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct meson_audio_arb_data*) ;
 int spin_lock_init (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static int meson_audio_arb_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct meson_audio_arb_data *arb;
 struct resource *res;
 int ret;

 arb = devm_kzalloc(dev, sizeof(*arb), GFP_KERNEL);
 if (!arb)
  return -ENOMEM;
 platform_set_drvdata(pdev, arb);

 arb->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(arb->clk)) {
  if (PTR_ERR(arb->clk) != -EPROBE_DEFER)
   dev_err(dev, "failed to get clock\n");
  return PTR_ERR(arb->clk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 arb->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(arb->regs))
  return PTR_ERR(arb->regs);

 spin_lock_init(&arb->lock);
 arb->reset_bits = axg_audio_arb_reset_bits;
 arb->rstc.nr_resets = ARRAY_SIZE(axg_audio_arb_reset_bits);
 arb->rstc.ops = &meson_audio_arb_rstc_ops;
 arb->rstc.of_node = dev->of_node;
 arb->rstc.owner = THIS_MODULE;






 ret = clk_prepare_enable(arb->clk);
 if (ret) {
  dev_err(dev, "failed to enable arb clock\n");
  return ret;
 }
 writel(BIT(ARB_GENERAL_BIT), arb->regs);


 ret = devm_reset_controller_register(dev, &arb->rstc);
 if (ret) {
  dev_err(dev, "failed to register arb reset controller\n");
  meson_audio_arb_remove(pdev);
 }

 return ret;
}
