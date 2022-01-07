
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct pca9685 {int regmap; } ;


 int LED_FULL ;
 unsigned int LED_N_OFF_H (scalar_t__) ;
 unsigned int LED_N_OFF_L (scalar_t__) ;
 unsigned int PCA9685_ALL_LED_OFF_H ;
 unsigned int PCA9685_ALL_LED_OFF_L ;
 scalar_t__ PCA9685_MAXCHAN ;
 int regmap_write (int ,unsigned int,int) ;
 struct pca9685* to_pca (struct pwm_chip*) ;

__attribute__((used)) static void pca9685_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct pca9685 *pca = to_pca(chip);
 unsigned int reg;

 if (pwm->hwpwm >= PCA9685_MAXCHAN)
  reg = PCA9685_ALL_LED_OFF_H;
 else
  reg = LED_N_OFF_H(pwm->hwpwm);

 regmap_write(pca->regmap, reg, LED_FULL);


 if (pwm->hwpwm >= PCA9685_MAXCHAN)
  reg = PCA9685_ALL_LED_OFF_L;
 else
  reg = LED_N_OFF_L(pwm->hwpwm);

 regmap_write(pca->regmap, reg, 0x0);
}
