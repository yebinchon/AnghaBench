
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ab8500_pwm_chip {int chip; } ;


 int dev_dbg (int *,char*) ;
 struct ab8500_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int ab8500_pwm_remove(struct platform_device *pdev)
{
 struct ab8500_pwm_chip *ab8500 = platform_get_drvdata(pdev);
 int err;

 err = pwmchip_remove(&ab8500->chip);
 if (err < 0)
  return err;

 dev_dbg(&pdev->dev, "pwm driver removed\n");

 return 0;
}
