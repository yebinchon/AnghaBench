
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpu_pwm_device {int polarity; int channel; TYPE_2__* tpu; } ;
typedef enum tpu_pin_state { ____Placeholder_tpu_pin_state } tpu_pin_state ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int PWM_POLARITY_INVERSED ;



 int TPU_TIOR_IOA_0 ;
 int TPU_TIOR_IOA_0_SET ;
 int TPU_TIOR_IOA_1 ;
 int TPU_TIOR_IOA_1_CLR ;
 int TPU_TIORn ;
 int dev_dbg (int *,char*,int ,char const* const) ;
 int tpu_pwm_write (struct tpu_pwm_device*,int ,int ) ;

__attribute__((used)) static void tpu_pwm_set_pin(struct tpu_pwm_device *pwm,
       enum tpu_pin_state state)
{
 static const char * const states[] = { "inactive", "PWM", "active" };

 dev_dbg(&pwm->tpu->pdev->dev, "%u: configuring pin as %s\n",
  pwm->channel, states[state]);

 switch (state) {
 case 129:
  tpu_pwm_write(pwm, TPU_TIORn,
         pwm->polarity == PWM_POLARITY_INVERSED ?
         TPU_TIOR_IOA_1 : TPU_TIOR_IOA_0);
  break;
 case 128:
  tpu_pwm_write(pwm, TPU_TIORn,
         pwm->polarity == PWM_POLARITY_INVERSED ?
         TPU_TIOR_IOA_0_SET : TPU_TIOR_IOA_1_CLR);
  break;
 case 130:
  tpu_pwm_write(pwm, TPU_TIORn,
         pwm->polarity == PWM_POLARITY_INVERSED ?
         TPU_TIOR_IOA_0 : TPU_TIOR_IOA_1);
  break;
 }
}
