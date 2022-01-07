
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {struct device* dev; } ;
struct meson_pwm_channel {scalar_t__ clk; scalar_t__ clk_parent; } ;
struct meson_pwm {struct meson_pwm_channel* channels; } ;
struct device {int dummy; } ;


 int __clk_get_name (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int clk_set_parent (scalar_t__,scalar_t__) ;
 int dev_err (struct device*,char*,int ,int,...) ;
 struct meson_pwm_channel* pwm_get_chip_data (struct pwm_device*) ;
 int pwm_set_chip_data (struct pwm_device*,struct meson_pwm_channel*) ;
 struct meson_pwm* to_meson_pwm (struct pwm_chip*) ;

__attribute__((used)) static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct meson_pwm *meson = to_meson_pwm(chip);
 struct meson_pwm_channel *channel;
 struct device *dev = chip->dev;
 int err;

 channel = pwm_get_chip_data(pwm);
 if (channel)
  return 0;

 channel = &meson->channels[pwm->hwpwm];

 if (channel->clk_parent) {
  err = clk_set_parent(channel->clk, channel->clk_parent);
  if (err < 0) {
   dev_err(dev, "failed to set parent %s for %s: %d\n",
    __clk_get_name(channel->clk_parent),
    __clk_get_name(channel->clk), err);
    return err;
  }
 }

 err = clk_prepare_enable(channel->clk);
 if (err < 0) {
  dev_err(dev, "failed to enable clock %s: %d\n",
   __clk_get_name(channel->clk), err);
  return err;
 }

 return pwm_set_chip_data(pwm, channel);
}
