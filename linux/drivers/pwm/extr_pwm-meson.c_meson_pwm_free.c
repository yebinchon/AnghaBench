
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct meson_pwm_channel {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct meson_pwm_channel* pwm_get_chip_data (struct pwm_device*) ;

__attribute__((used)) static void meson_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);

 if (channel)
  clk_disable_unprepare(channel->clk);
}
