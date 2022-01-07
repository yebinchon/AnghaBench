
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pwm_state {unsigned long long period; } ;
struct pwm_chip {int dev; } ;
struct atmel_pwm_chip {TYPE_2__* data; int clk; } ;
struct TYPE_3__ {unsigned long long max_period; scalar_t__ max_pres; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 int EINVAL ;
 int NSEC_PER_SEC ;
 unsigned long long clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int do_div (unsigned long long,int ) ;
 struct atmel_pwm_chip* to_atmel_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int atmel_pwm_calculate_cprd_and_pres(struct pwm_chip *chip,
          const struct pwm_state *state,
          unsigned long *cprd, u32 *pres)
{
 struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
 unsigned long long cycles = state->period;


 cycles *= clk_get_rate(atmel_pwm->clk);
 do_div(cycles, NSEC_PER_SEC);

 for (*pres = 0; cycles > atmel_pwm->data->cfg.max_period; cycles >>= 1)
  (*pres)++;

 if (*pres > atmel_pwm->data->cfg.max_pres) {
  dev_err(chip->dev, "pres exceeds the maximum value\n");
  return -EINVAL;
 }

 *cprd = cycles;

 return 0;
}
