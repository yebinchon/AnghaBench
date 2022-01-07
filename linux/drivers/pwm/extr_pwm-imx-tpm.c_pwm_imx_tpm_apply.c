
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int dummy; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct imx_tpm_pwm_param {int dummy; } ;
struct imx_tpm_pwm_chip {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_imx_tpm_apply_hw (struct pwm_chip*,struct imx_tpm_pwm_param*,struct pwm_state*,struct pwm_device*) ;
 int pwm_imx_tpm_round_state (struct pwm_chip*,struct imx_tpm_pwm_param*,struct pwm_state*,struct pwm_state const*) ;
 struct imx_tpm_pwm_chip* to_imx_tpm_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_imx_tpm_apply(struct pwm_chip *chip,
        struct pwm_device *pwm,
        const struct pwm_state *state)
{
 struct imx_tpm_pwm_chip *tpm = to_imx_tpm_pwm_chip(chip);
 struct imx_tpm_pwm_param param;
 struct pwm_state real_state;
 int ret;

 ret = pwm_imx_tpm_round_state(chip, &param, &real_state, state);
 if (ret)
  return ret;

 mutex_lock(&tpm->lock);
 ret = pwm_imx_tpm_apply_hw(chip, &param, &real_state, pwm);
 mutex_unlock(&tpm->lock);

 return ret;
}
