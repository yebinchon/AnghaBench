
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_pwm_n_cells; int base; int npwm; int of_xlate; int * ops; int * dev; } ;
struct tpu_device {struct platform_device* pdev; TYPE_1__ chip; int clk; int base; int lock; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TPU_CHANNEL_MAX ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct tpu_device* devm_kzalloc (int *,int,int ) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tpu_device*) ;
 int pm_runtime_enable (int *) ;
 int pwmchip_add (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int tpu_pwm_ops ;

__attribute__((used)) static int tpu_probe(struct platform_device *pdev)
{
 struct tpu_device *tpu;
 struct resource *res;
 int ret;

 tpu = devm_kzalloc(&pdev->dev, sizeof(*tpu), GFP_KERNEL);
 if (tpu == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&tpu->lock);
 tpu->pdev = pdev;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 tpu->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(tpu->base))
  return PTR_ERR(tpu->base);

 tpu->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(tpu->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  return PTR_ERR(tpu->clk);
 }


 platform_set_drvdata(pdev, tpu);

 tpu->chip.dev = &pdev->dev;
 tpu->chip.ops = &tpu_pwm_ops;
 tpu->chip.of_xlate = of_pwm_xlate_with_flags;
 tpu->chip.of_pwm_n_cells = 3;
 tpu->chip.base = -1;
 tpu->chip.npwm = TPU_CHANNEL_MAX;

 ret = pwmchip_add(&tpu->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register PWM chip\n");
  return ret;
 }

 dev_info(&pdev->dev, "TPU PWM %d registered\n", tpu->pdev->id);

 pm_runtime_enable(&pdev->dev);

 return 0;
}
