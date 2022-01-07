
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; int id; } ;
struct TYPE_2__ {int npwm; int base; int * ops; int * dev; } ;
struct ab8500_pwm_chip {TYPE_1__ chip; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ab8500_pwm_ops ;
 int dev_dbg (int *,char*) ;
 struct ab8500_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ab8500_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int ab8500_pwm_probe(struct platform_device *pdev)
{
 struct ab8500_pwm_chip *ab8500;
 int err;





 ab8500 = devm_kzalloc(&pdev->dev, sizeof(*ab8500), GFP_KERNEL);
 if (ab8500 == ((void*)0))
  return -ENOMEM;

 ab8500->chip.dev = &pdev->dev;
 ab8500->chip.ops = &ab8500_pwm_ops;
 ab8500->chip.base = pdev->id;
 ab8500->chip.npwm = 1;

 err = pwmchip_add(&ab8500->chip);
 if (err < 0)
  return err;

 dev_dbg(&pdev->dev, "pwm probe successful\n");
 platform_set_drvdata(pdev, ab8500);

 return 0;
}
