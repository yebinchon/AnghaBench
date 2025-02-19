
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int base; int npwm; int of_pwm_n_cells; int pwms; int of_xlate; int * ops; TYPE_3__* dev; } ;
struct rockchip_pwm_chip {void* clk; void* pclk; TYPE_2__ chip; TYPE_1__* data; void* base; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_8__ {scalar_t__ supports_polarity; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare (void*) ;
 int clk_prepare_enable (void*) ;
 int clk_unprepare (void*) ;
 int dev_err (TYPE_3__*,char*,int) ;
 void* devm_clk_get (TYPE_3__*,char*) ;
 void* devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct rockchip_pwm_chip* devm_kzalloc (TYPE_3__*,int,int ) ;
 int of_count_phandle_with_args (int ,char*,char*) ;
 struct of_device_id* of_match_device (int ,TYPE_3__*) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rockchip_pwm_chip*) ;
 int pwm_is_enabled (int ) ;
 int pwmchip_add (TYPE_2__*) ;
 int rockchip_pwm_dt_ids ;
 int rockchip_pwm_ops ;

__attribute__((used)) static int rockchip_pwm_probe(struct platform_device *pdev)
{
 const struct of_device_id *id;
 struct rockchip_pwm_chip *pc;
 struct resource *r;
 int ret, count;

 id = of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
 if (!id)
  return -EINVAL;

 pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pc->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(pc->base))
  return PTR_ERR(pc->base);

 pc->clk = devm_clk_get(&pdev->dev, "pwm");
 if (IS_ERR(pc->clk)) {
  pc->clk = devm_clk_get(&pdev->dev, ((void*)0));
  if (IS_ERR(pc->clk)) {
   ret = PTR_ERR(pc->clk);
   if (ret != -EPROBE_DEFER)
    dev_err(&pdev->dev, "Can't get bus clk: %d\n",
     ret);
   return ret;
  }
 }

 count = of_count_phandle_with_args(pdev->dev.of_node,
        "clocks", "#clock-cells");
 if (count == 2)
  pc->pclk = devm_clk_get(&pdev->dev, "pclk");
 else
  pc->pclk = pc->clk;

 if (IS_ERR(pc->pclk)) {
  ret = PTR_ERR(pc->pclk);
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Can't get APB clk: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(pc->clk);
 if (ret) {
  dev_err(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
  return ret;
 }

 ret = clk_prepare(pc->pclk);
 if (ret) {
  dev_err(&pdev->dev, "Can't prepare APB clk: %d\n", ret);
  goto err_clk;
 }

 platform_set_drvdata(pdev, pc);

 pc->data = id->data;
 pc->chip.dev = &pdev->dev;
 pc->chip.ops = &rockchip_pwm_ops;
 pc->chip.base = -1;
 pc->chip.npwm = 1;

 if (pc->data->supports_polarity) {
  pc->chip.of_xlate = of_pwm_xlate_with_flags;
  pc->chip.of_pwm_n_cells = 3;
 }

 ret = pwmchip_add(&pc->chip);
 if (ret < 0) {
  clk_unprepare(pc->clk);
  dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
  goto err_pclk;
 }


 if (!pwm_is_enabled(pc->chip.pwms))
  clk_disable(pc->clk);

 return 0;

err_pclk:
 clk_unprepare(pc->pclk);
err_clk:
 clk_disable_unprepare(pc->clk);

 return ret;
}
