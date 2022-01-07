
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int enabled; } ;
struct pwm_bl_data {int enabled; scalar_t__ enable_gpio; scalar_t__ post_pwm_on_delay; int pwm; int dev; int power_supply; } ;


 int dev_err (int ,char*) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (scalar_t__) ;
 int pwm_apply_state (int ,struct pwm_state*) ;
 int pwm_get_state (int ,struct pwm_state*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void pwm_backlight_power_on(struct pwm_bl_data *pb)
{
 struct pwm_state state;
 int err;

 pwm_get_state(pb->pwm, &state);
 if (pb->enabled)
  return;

 err = regulator_enable(pb->power_supply);
 if (err < 0)
  dev_err(pb->dev, "failed to enable power supply\n");

 state.enabled = 1;
 pwm_apply_state(pb->pwm, &state);

 if (pb->post_pwm_on_delay)
  msleep(pb->post_pwm_on_delay);

 if (pb->enable_gpio)
  gpiod_set_value_cansleep(pb->enable_gpio, 1);

 pb->enabled = 1;
}
