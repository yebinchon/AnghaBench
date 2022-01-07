
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpu_pwm_device {int timer_on; int prescaler; int duty; int period; int channel; TYPE_2__* tpu; } ;
struct TYPE_4__ {TYPE_1__* pdev; int clk; } ;
struct TYPE_3__ {int dev; } ;


 int TPU_PIN_INACTIVE ;
 int TPU_PIN_PWM ;
 int TPU_TCR_CCLR_TGRB ;
 int TPU_TCR_CKEG_RISING ;
 int TPU_TCRn ;
 int TPU_TGRAn ;
 int TPU_TGRBn ;
 int TPU_TMDR_MD_PWM ;
 int TPU_TMDRn ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int *,char*,int ,int,int) ;
 int dev_err (int *,char*) ;
 int pm_runtime_get_sync (int *) ;
 int tpu_pwm_set_pin (struct tpu_pwm_device*,int ) ;
 int tpu_pwm_start_stop (struct tpu_pwm_device*,int) ;
 int tpu_pwm_write (struct tpu_pwm_device*,int ,int) ;

__attribute__((used)) static int tpu_pwm_timer_start(struct tpu_pwm_device *pwm)
{
 int ret;

 if (!pwm->timer_on) {

  pm_runtime_get_sync(&pwm->tpu->pdev->dev);
  ret = clk_prepare_enable(pwm->tpu->clk);
  if (ret) {
   dev_err(&pwm->tpu->pdev->dev, "cannot enable clock\n");
   return ret;
  }
  pwm->timer_on = 1;
 }






 tpu_pwm_set_pin(pwm, TPU_PIN_INACTIVE);
 tpu_pwm_start_stop(pwm, 0);
 tpu_pwm_write(pwm, TPU_TCRn, TPU_TCR_CCLR_TGRB | TPU_TCR_CKEG_RISING |
        pwm->prescaler);
 tpu_pwm_write(pwm, TPU_TMDRn, TPU_TMDR_MD_PWM);
 tpu_pwm_set_pin(pwm, TPU_PIN_PWM);
 tpu_pwm_write(pwm, TPU_TGRAn, pwm->duty);
 tpu_pwm_write(pwm, TPU_TGRBn, pwm->period);

 dev_dbg(&pwm->tpu->pdev->dev, "%u: TGRA 0x%04x TGRB 0x%04x\n",
  pwm->channel, pwm->duty, pwm->period);


 tpu_pwm_start_stop(pwm, 1);

 return 0;
}
