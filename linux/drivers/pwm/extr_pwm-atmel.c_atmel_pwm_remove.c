
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct atmel_pwm_chip {int chip; int isr_lock; int clk; } ;


 int clk_unprepare (int ) ;
 int mutex_destroy (int *) ;
 struct atmel_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int atmel_pwm_remove(struct platform_device *pdev)
{
 struct atmel_pwm_chip *atmel_pwm = platform_get_drvdata(pdev);

 clk_unprepare(atmel_pwm->clk);
 mutex_destroy(&atmel_pwm->isr_lock);

 return pwmchip_remove(&atmel_pwm->chip);
}
