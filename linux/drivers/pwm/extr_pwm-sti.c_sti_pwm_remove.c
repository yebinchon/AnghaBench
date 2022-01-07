
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * pwms; } ;
struct sti_pwm_chip {TYPE_2__ chip; int cpt_clk; int pwm_clk; TYPE_1__* cdata; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {unsigned int pwm_num_devs; } ;


 int clk_unprepare (int ) ;
 struct sti_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwm_disable (int *) ;
 int pwmchip_remove (TYPE_2__*) ;

__attribute__((used)) static int sti_pwm_remove(struct platform_device *pdev)
{
 struct sti_pwm_chip *pc = platform_get_drvdata(pdev);
 unsigned int i;

 for (i = 0; i < pc->cdata->pwm_num_devs; i++)
  pwm_disable(&pc->chip.pwms[i]);

 clk_unprepare(pc->pwm_clk);
 clk_unprepare(pc->cpt_clk);

 return pwmchip_remove(&pc->chip);
}
