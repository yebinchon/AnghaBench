
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef int u32 ;
struct sun4i_pwm_chip {TYPE_1__* data; int clk; } ;
struct pwm_state {int enabled; void* period; void* duty_cycle; int polarity; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_prescaler_bypass; } ;


 int BIT_CH (int,int ) ;
 void* DIV_ROUND_CLOSEST_ULL (unsigned int,unsigned int) ;
 unsigned int NSEC_PER_SEC ;
 int PWM_ACT_STATE ;
 int PWM_CH_PRD (int ) ;
 int PWM_CLK_GATING ;
 int PWM_CTRL_REG ;
 int PWM_EN ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_NORMAL ;
 size_t PWM_PRESCAL_MASK ;
 unsigned int PWM_REG_DTY (int) ;
 unsigned int PWM_REG_PRD (int) ;
 size_t PWM_REG_PRESCAL (int,int ) ;
 unsigned int clk_get_rate (int ) ;
 unsigned int* prescaler_table ;
 int sun4i_pwm_readl (struct sun4i_pwm_chip*,int ) ;
 struct sun4i_pwm_chip* to_sun4i_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void sun4i_pwm_get_state(struct pwm_chip *chip,
    struct pwm_device *pwm,
    struct pwm_state *state)
{
 struct sun4i_pwm_chip *sun4i_pwm = to_sun4i_pwm_chip(chip);
 u64 clk_rate, tmp;
 u32 val;
 unsigned int prescaler;

 clk_rate = clk_get_rate(sun4i_pwm->clk);

 val = sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);

 if ((PWM_REG_PRESCAL(val, pwm->hwpwm) == PWM_PRESCAL_MASK) &&
     sun4i_pwm->data->has_prescaler_bypass)
  prescaler = 1;
 else
  prescaler = prescaler_table[PWM_REG_PRESCAL(val, pwm->hwpwm)];

 if (prescaler == 0)
  return;

 if (val & BIT_CH(PWM_ACT_STATE, pwm->hwpwm))
  state->polarity = PWM_POLARITY_NORMAL;
 else
  state->polarity = PWM_POLARITY_INVERSED;

 if ((val & BIT_CH(PWM_CLK_GATING | PWM_EN, pwm->hwpwm)) ==
     BIT_CH(PWM_CLK_GATING | PWM_EN, pwm->hwpwm))
  state->enabled = 1;
 else
  state->enabled = 0;

 val = sun4i_pwm_readl(sun4i_pwm, PWM_CH_PRD(pwm->hwpwm));

 tmp = prescaler * NSEC_PER_SEC * PWM_REG_DTY(val);
 state->duty_cycle = DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);

 tmp = prescaler * NSEC_PER_SEC * PWM_REG_PRD(val);
 state->period = DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);
}
