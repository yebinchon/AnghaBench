
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct atmel_hlcdc_pwm {TYPE_1__* hlcdc; int chip; } ;
struct TYPE_2__ {int periph_clk; } ;


 int clk_disable_unprepare (int ) ;
 struct atmel_hlcdc_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int atmel_hlcdc_pwm_remove(struct platform_device *pdev)
{
 struct atmel_hlcdc_pwm *chip = platform_get_drvdata(pdev);
 int ret;

 ret = pwmchip_remove(&chip->chip);
 if (ret)
  return ret;

 clk_disable_unprepare(chip->hlcdc->periph_clk);

 return 0;
}
