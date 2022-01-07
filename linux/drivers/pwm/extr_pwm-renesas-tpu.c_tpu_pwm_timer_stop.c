
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpu_pwm_device {int timer_on; TYPE_2__* tpu; } ;
struct TYPE_4__ {TYPE_1__* pdev; int clk; } ;
struct TYPE_3__ {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int pm_runtime_put (int *) ;
 int tpu_pwm_start_stop (struct tpu_pwm_device*,int) ;

__attribute__((used)) static void tpu_pwm_timer_stop(struct tpu_pwm_device *pwm)
{
 if (!pwm->timer_on)
  return;


 tpu_pwm_start_stop(pwm, 0);


 clk_disable_unprepare(pwm->tpu->clk);
 pm_runtime_put(&pwm->tpu->pdev->dev);

 pwm->timer_on = 0;
}
