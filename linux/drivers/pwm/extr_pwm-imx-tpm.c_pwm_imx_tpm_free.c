
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct imx_tpm_pwm_chip {int lock; int user_count; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx_tpm_pwm_chip* to_imx_tpm_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void pwm_imx_tpm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct imx_tpm_pwm_chip *tpm = to_imx_tpm_pwm_chip(chip);

 mutex_lock(&tpm->lock);
 tpm->user_count--;
 mutex_unlock(&tpm->lock);
}
