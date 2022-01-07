
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pwm_chip {int base_clk; int chip; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct samsung_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int pwm_samsung_remove(struct platform_device *pdev)
{
 struct samsung_pwm_chip *chip = platform_get_drvdata(pdev);
 int ret;

 ret = pwmchip_remove(&chip->chip);
 if (ret < 0)
  return ret;

 clk_disable_unprepare(chip->base_clk);

 return 0;
}
