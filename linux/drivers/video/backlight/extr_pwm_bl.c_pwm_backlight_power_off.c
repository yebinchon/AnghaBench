
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int enabled; scalar_t__ duty_cycle; } ;
struct pwm_bl_data {int enabled; int power_supply; int pwm; scalar_t__ pwm_off_delay; scalar_t__ enable_gpio; } ;


 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 int msleep (scalar_t__) ;
 int pwm_apply_state (int ,struct pwm_state*) ;
 int pwm_get_state (int ,struct pwm_state*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void pwm_backlight_power_off(struct pwm_bl_data *pb)
{
 struct pwm_state state;

 pwm_get_state(pb->pwm, &state);
 if (!pb->enabled)
  return;

 if (pb->enable_gpio)
  gpiod_set_value_cansleep(pb->enable_gpio, 0);

 if (pb->pwm_off_delay)
  msleep(pb->pwm_off_delay);

 state.enabled = 0;
 state.duty_cycle = 0;
 pwm_apply_state(pb->pwm, &state);

 regulator_disable(pb->power_supply);
 pb->enabled = 0;
}
