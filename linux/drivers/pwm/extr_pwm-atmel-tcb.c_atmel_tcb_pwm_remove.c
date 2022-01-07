
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct atmel_tcb_pwm_chip {TYPE_1__* tc; int chip; } ;
struct TYPE_2__ {int slow_clk; } ;


 int atmel_tc_free (TYPE_1__*) ;
 int clk_disable_unprepare (int ) ;
 struct atmel_tcb_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int atmel_tcb_pwm_remove(struct platform_device *pdev)
{
 struct atmel_tcb_pwm_chip *tcbpwm = platform_get_drvdata(pdev);
 int err;

 clk_disable_unprepare(tcbpwm->tc->slow_clk);

 err = pwmchip_remove(&tcbpwm->chip);
 if (err < 0)
  return err;

 atmel_tc_free(tcbpwm->tc);

 return 0;
}
