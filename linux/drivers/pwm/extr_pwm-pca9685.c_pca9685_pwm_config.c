
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dev; } ;
struct pca9685 {int period_ns; int duty_ns; int regmap; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 unsigned long long DIV_ROUND_UP_ULL (unsigned long long,int) ;
 int EINVAL ;
 int LED_FULL ;
 unsigned int LED_N_OFF_H (scalar_t__) ;
 unsigned int LED_N_OFF_L (scalar_t__) ;
 unsigned int LED_N_ON_H (scalar_t__) ;
 unsigned int PCA9685_ALL_LED_OFF_H ;
 unsigned int PCA9685_ALL_LED_OFF_L ;
 unsigned int PCA9685_ALL_LED_ON_H ;
 int PCA9685_COUNTER_RANGE ;
 scalar_t__ PCA9685_MAXCHAN ;
 int PCA9685_OSC_CLOCK_MHZ ;
 unsigned int PCA9685_PRESCALE ;
 int PCA9685_PRESCALE_MAX ;
 int PCA9685_PRESCALE_MIN ;
 int dev_err (int ,char*) ;
 int pca9685_set_sleep_mode (struct pca9685*,int) ;
 int regmap_write (int ,unsigned int,int) ;
 struct pca9685* to_pca (struct pwm_chip*) ;

__attribute__((used)) static int pca9685_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 struct pca9685 *pca = to_pca(chip);
 unsigned long long duty;
 unsigned int reg;
 int prescale;

 if (period_ns != pca->period_ns) {
  prescale = DIV_ROUND_CLOSEST(PCA9685_OSC_CLOCK_MHZ * period_ns,
          PCA9685_COUNTER_RANGE * 1000) - 1;

  if (prescale >= PCA9685_PRESCALE_MIN &&
   prescale <= PCA9685_PRESCALE_MAX) {







   pca9685_set_sleep_mode(pca, 1);


   regmap_write(pca->regmap, PCA9685_PRESCALE, prescale);


   pca9685_set_sleep_mode(pca, 0);

   pca->period_ns = period_ns;
  } else {
   dev_err(chip->dev,
    "prescaler not set: period out of bounds!\n");
   return -EINVAL;
  }
 }

 pca->duty_ns = duty_ns;

 if (duty_ns < 1) {
  if (pwm->hwpwm >= PCA9685_MAXCHAN)
   reg = PCA9685_ALL_LED_OFF_H;
  else
   reg = LED_N_OFF_H(pwm->hwpwm);

  regmap_write(pca->regmap, reg, LED_FULL);

  return 0;
 }

 if (duty_ns == period_ns) {

  if (pwm->hwpwm >= PCA9685_MAXCHAN)
   reg = PCA9685_ALL_LED_OFF_L;
  else
   reg = LED_N_OFF_L(pwm->hwpwm);

  regmap_write(pca->regmap, reg, 0x0);

  if (pwm->hwpwm >= PCA9685_MAXCHAN)
   reg = PCA9685_ALL_LED_OFF_H;
  else
   reg = LED_N_OFF_H(pwm->hwpwm);

  regmap_write(pca->regmap, reg, 0x0);


  if (pwm->hwpwm >= PCA9685_MAXCHAN)
   reg = PCA9685_ALL_LED_ON_H;
  else
   reg = LED_N_ON_H(pwm->hwpwm);

  regmap_write(pca->regmap, reg, LED_FULL);

  return 0;
 }

 duty = PCA9685_COUNTER_RANGE * (unsigned long long)duty_ns;
 duty = DIV_ROUND_UP_ULL(duty, period_ns);

 if (pwm->hwpwm >= PCA9685_MAXCHAN)
  reg = PCA9685_ALL_LED_OFF_L;
 else
  reg = LED_N_OFF_L(pwm->hwpwm);

 regmap_write(pca->regmap, reg, (int)duty & 0xff);

 if (pwm->hwpwm >= PCA9685_MAXCHAN)
  reg = PCA9685_ALL_LED_OFF_H;
 else
  reg = LED_N_OFF_H(pwm->hwpwm);

 regmap_write(pca->regmap, reg, ((int)duty >> 8) & 0xf);


 if (pwm->hwpwm >= PCA9685_MAXCHAN)
  reg = PCA9685_ALL_LED_ON_H;
 else
  reg = LED_N_ON_H(pwm->hwpwm);

 regmap_write(pca->regmap, reg, 0);

 return 0;
}
