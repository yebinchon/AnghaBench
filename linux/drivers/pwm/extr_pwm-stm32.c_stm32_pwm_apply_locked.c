
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_pwm {int lock; } ;
struct pwm_state {int dummy; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stm32_pwm_apply (struct pwm_chip*,struct pwm_device*,struct pwm_state const*) ;
 struct stm32_pwm* to_stm32_pwm_dev (struct pwm_chip*) ;

__attribute__((used)) static int stm32_pwm_apply_locked(struct pwm_chip *chip, struct pwm_device *pwm,
      const struct pwm_state *state)
{
 struct stm32_pwm *priv = to_stm32_pwm_dev(chip);
 int ret;


 mutex_lock(&priv->lock);
 ret = stm32_pwm_apply(chip, pwm, state);
 mutex_unlock(&priv->lock);

 return ret;
}
