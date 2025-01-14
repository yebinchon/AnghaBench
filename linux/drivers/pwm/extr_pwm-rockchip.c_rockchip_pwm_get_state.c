
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rockchip_pwm_chip {int pclk; TYPE_2__* data; scalar_t__ base; int clk; } ;
struct pwm_state {int enabled; int polarity; void* duty_cycle; void* period; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_3__ {scalar_t__ ctrl; scalar_t__ duty; scalar_t__ period; } ;
struct TYPE_4__ {int enable_conf; int prescaler; scalar_t__ supports_polarity; TYPE_1__ regs; } ;


 void* DIV_ROUND_CLOSEST_ULL (int,unsigned long) ;
 int NSEC_PER_SEC ;
 int PWM_DUTY_POSITIVE ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_NORMAL ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 unsigned long clk_get_rate (int ) ;
 void* readl_relaxed (scalar_t__) ;
 struct rockchip_pwm_chip* to_rockchip_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void rockchip_pwm_get_state(struct pwm_chip *chip,
       struct pwm_device *pwm,
       struct pwm_state *state)
{
 struct rockchip_pwm_chip *pc = to_rockchip_pwm_chip(chip);
 u32 enable_conf = pc->data->enable_conf;
 unsigned long clk_rate;
 u64 tmp;
 u32 val;
 int ret;

 ret = clk_enable(pc->pclk);
 if (ret)
  return;

 clk_rate = clk_get_rate(pc->clk);

 tmp = readl_relaxed(pc->base + pc->data->regs.period);
 tmp *= pc->data->prescaler * NSEC_PER_SEC;
 state->period = DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);

 tmp = readl_relaxed(pc->base + pc->data->regs.duty);
 tmp *= pc->data->prescaler * NSEC_PER_SEC;
 state->duty_cycle = DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);

 val = readl_relaxed(pc->base + pc->data->regs.ctrl);
 if (pc->data->supports_polarity)
  state->enabled = ((val & enable_conf) != enable_conf) ?
     0 : 1;
 else
  state->enabled = ((val & enable_conf) == enable_conf) ?
     1 : 0;

 if (pc->data->supports_polarity && !(val & PWM_DUTY_POSITIVE))
  state->polarity = PWM_POLARITY_INVERSED;
 else
  state->polarity = PWM_POLARITY_NORMAL;

 clk_disable(pc->pclk);
}
