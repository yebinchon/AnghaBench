
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int base; int npwm; int * ops; int * dev; } ;
struct mtk_disp_pwm {void* clk_main; void* clk_mm; TYPE_2__* data; TYPE_1__ chip; void* base; } ;
struct TYPE_4__ {int con0_sel; int con0; int bls_debug_mask; int bls_debug; int has_commit; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_prepare (void*) ;
 int clk_unprepare (void*) ;
 int dev_err (int *,char*,int) ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct mtk_disp_pwm* devm_kzalloc (int *,int,int ) ;
 int mtk_disp_pwm_ops ;
 int mtk_disp_pwm_update_bits (struct mtk_disp_pwm*,int ,int ,int ) ;
 TYPE_2__* of_device_get_match_data (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_disp_pwm*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int mtk_disp_pwm_probe(struct platform_device *pdev)
{
 struct mtk_disp_pwm *mdp;
 struct resource *r;
 int ret;

 mdp = devm_kzalloc(&pdev->dev, sizeof(*mdp), GFP_KERNEL);
 if (!mdp)
  return -ENOMEM;

 mdp->data = of_device_get_match_data(&pdev->dev);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mdp->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(mdp->base))
  return PTR_ERR(mdp->base);

 mdp->clk_main = devm_clk_get(&pdev->dev, "main");
 if (IS_ERR(mdp->clk_main))
  return PTR_ERR(mdp->clk_main);

 mdp->clk_mm = devm_clk_get(&pdev->dev, "mm");
 if (IS_ERR(mdp->clk_mm))
  return PTR_ERR(mdp->clk_mm);

 ret = clk_prepare(mdp->clk_main);
 if (ret < 0)
  return ret;

 ret = clk_prepare(mdp->clk_mm);
 if (ret < 0)
  goto disable_clk_main;

 mdp->chip.dev = &pdev->dev;
 mdp->chip.ops = &mtk_disp_pwm_ops;
 mdp->chip.base = -1;
 mdp->chip.npwm = 1;

 ret = pwmchip_add(&mdp->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
  goto disable_clk_mm;
 }

 platform_set_drvdata(pdev, mdp);





 if (!mdp->data->has_commit) {
  mtk_disp_pwm_update_bits(mdp, mdp->data->bls_debug,
      mdp->data->bls_debug_mask,
      mdp->data->bls_debug_mask);
  mtk_disp_pwm_update_bits(mdp, mdp->data->con0,
      mdp->data->con0_sel,
      mdp->data->con0_sel);
 }

 return 0;

disable_clk_mm:
 clk_unprepare(mdp->clk_mm);
disable_clk_main:
 clk_unprepare(mdp->clk_main);
 return ret;
}
