
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct pwm_state {unsigned long long period; unsigned long long duty_cycle; scalar_t__ polarity; scalar_t__ enabled; } ;
struct pwm_imx27_chip {scalar_t__ mmio_base; int clk_per; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 unsigned long FIELD_PREP (int ,int ) ;
 scalar_t__ MX3_PWMCR ;
 int MX3_PWMCR_CLKSRC ;
 int MX3_PWMCR_CLKSRC_IPG_HIGH ;
 unsigned long MX3_PWMCR_DBGEN ;
 unsigned long MX3_PWMCR_DOZEN ;
 unsigned long MX3_PWMCR_EN ;
 int MX3_PWMCR_POUTC ;
 int MX3_PWMCR_POUTC_INVERTED ;
 unsigned long MX3_PWMCR_PRESCALER_SET (unsigned long) ;
 unsigned long MX3_PWMCR_STOPEN ;
 unsigned long MX3_PWMCR_WAITEN ;
 scalar_t__ MX3_PWMPR ;
 scalar_t__ MX3_PWMSAR ;
 scalar_t__ PWM_POLARITY_INVERSED ;
 unsigned long long clk_get_rate (int ) ;
 int do_div (unsigned long long,int) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;
 int pwm_imx27_clk_disable_unprepare (struct pwm_chip*) ;
 int pwm_imx27_clk_prepare_enable (struct pwm_chip*) ;
 int pwm_imx27_sw_reset (struct pwm_chip*) ;
 int pwm_imx27_wait_fifo_slot (struct pwm_chip*,struct pwm_device*) ;
 struct pwm_imx27_chip* to_pwm_imx27_chip (struct pwm_chip*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int pwm_imx27_apply(struct pwm_chip *chip, struct pwm_device *pwm,
      const struct pwm_state *state)
{
 unsigned long period_cycles, duty_cycles, prescale;
 struct pwm_imx27_chip *imx = to_pwm_imx27_chip(chip);
 struct pwm_state cstate;
 unsigned long long c;
 int ret;
 u32 cr;

 pwm_get_state(pwm, &cstate);

 if (state->enabled) {
  c = clk_get_rate(imx->clk_per);
  c *= state->period;

  do_div(c, 1000000000);
  period_cycles = c;

  prescale = period_cycles / 0x10000 + 1;

  period_cycles /= prescale;
  c = (unsigned long long)period_cycles * state->duty_cycle;
  do_div(c, state->period);
  duty_cycles = c;





  if (period_cycles > 2)
   period_cycles -= 2;
  else
   period_cycles = 0;






  if (cstate.enabled) {
   pwm_imx27_wait_fifo_slot(chip, pwm);
  } else {
   ret = pwm_imx27_clk_prepare_enable(chip);
   if (ret)
    return ret;

   pwm_imx27_sw_reset(chip);
  }

  writel(duty_cycles, imx->mmio_base + MX3_PWMSAR);
  writel(period_cycles, imx->mmio_base + MX3_PWMPR);

  cr = MX3_PWMCR_PRESCALER_SET(prescale) |
       MX3_PWMCR_STOPEN | MX3_PWMCR_DOZEN | MX3_PWMCR_WAITEN |
       FIELD_PREP(MX3_PWMCR_CLKSRC, MX3_PWMCR_CLKSRC_IPG_HIGH) |
       MX3_PWMCR_DBGEN | MX3_PWMCR_EN;

  if (state->polarity == PWM_POLARITY_INVERSED)
   cr |= FIELD_PREP(MX3_PWMCR_POUTC,
     MX3_PWMCR_POUTC_INVERTED);

  writel(cr, imx->mmio_base + MX3_PWMCR);
 } else if (cstate.enabled) {
  writel(0, imx->mmio_base + MX3_PWMCR);

  pwm_imx27_clk_disable_unprepare(chip);
 }

 return 0;
}
