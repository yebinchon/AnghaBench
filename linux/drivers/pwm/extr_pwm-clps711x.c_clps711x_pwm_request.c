
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; } ;
struct pwm_device {TYPE_1__ args; } ;
struct pwm_chip {int dummy; } ;
struct clps711x_chip {int clk; } ;


 int DIV_ROUND_CLOSEST (int ,unsigned int) ;
 int EINVAL ;
 int NSEC_PER_SEC ;
 unsigned int clk_get_rate (int ) ;
 struct clps711x_chip* to_clps711x_chip (struct pwm_chip*) ;

__attribute__((used)) static int clps711x_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct clps711x_chip *priv = to_clps711x_chip(chip);
 unsigned int freq = clk_get_rate(priv->clk);

 if (!freq)
  return -EINVAL;


 pwm->args.period = DIV_ROUND_CLOSEST(NSEC_PER_SEC, freq);

 return 0;
}
