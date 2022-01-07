
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_mask; } ;
struct samsung_pwm_chip {TYPE_1__ variant; } ;
struct samsung_pwm_channel {int dummy; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;


 int BIT (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_warn (int ,char*,int ) ;
 struct samsung_pwm_channel* kzalloc (int,int ) ;
 int pwm_set_chip_data (struct pwm_device*,struct samsung_pwm_channel*) ;
 struct samsung_pwm_chip* to_samsung_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_samsung_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct samsung_pwm_chip *our_chip = to_samsung_pwm_chip(chip);
 struct samsung_pwm_channel *our_chan;

 if (!(our_chip->variant.output_mask & BIT(pwm->hwpwm))) {
  dev_warn(chip->dev,
   "tried to request PWM channel %d without output\n",
   pwm->hwpwm);
  return -EINVAL;
 }

 our_chan = kzalloc(sizeof(*our_chan), GFP_KERNEL);
 if (!our_chan)
  return -ENOMEM;

 pwm_set_chip_data(pwm, our_chan);

 return 0;
}
