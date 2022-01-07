
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;
struct crystalcove_pwm {int regmap; TYPE_1__ chip; } ;


 int EINVAL ;
 int NSEC_PER_SEC ;
 int PWM0_CLK_DIV ;
 int PWM0_DUTY_CYCLE ;
 int PWM_BASE_CLK ;
 int PWM_MAX_LEVEL ;
 int PWM_MAX_PERIOD_NS ;
 int PWM_OUTPUT_ENABLE ;
 int crc_pwm_disable (struct pwm_chip*,struct pwm_device*) ;
 int crc_pwm_enable (struct pwm_chip*,struct pwm_device*) ;
 int dev_err (struct device*,char*) ;
 int pwm_get_period (struct pwm_device*) ;
 int regmap_write (int ,int ,int) ;
 struct crystalcove_pwm* to_crc_pwm (struct pwm_chip*) ;

__attribute__((used)) static int crc_pwm_config(struct pwm_chip *c, struct pwm_device *pwm,
     int duty_ns, int period_ns)
{
 struct crystalcove_pwm *crc_pwm = to_crc_pwm(c);
 struct device *dev = crc_pwm->chip.dev;
 int level;

 if (period_ns > PWM_MAX_PERIOD_NS) {
  dev_err(dev, "un-supported period_ns\n");
  return -EINVAL;
 }

 if (pwm_get_period(pwm) != period_ns) {
  int clk_div;


  crc_pwm_disable(c, pwm);
  clk_div = PWM_BASE_CLK * period_ns / NSEC_PER_SEC;

  regmap_write(crc_pwm->regmap, PWM0_CLK_DIV,
     clk_div | PWM_OUTPUT_ENABLE);


  crc_pwm_enable(c, pwm);
 }


 level = duty_ns * PWM_MAX_LEVEL / period_ns;
 regmap_write(crc_pwm->regmap, PWM0_DUTY_CYCLE, level);

 return 0;
}
