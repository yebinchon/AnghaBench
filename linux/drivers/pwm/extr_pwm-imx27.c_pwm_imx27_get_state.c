
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pwm_state {int enabled; void* duty_cycle; void* period; int polarity; } ;
struct pwm_imx27_chip {scalar_t__ mmio_base; int clk_per; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;


 void* DIV_ROUND_CLOSEST_ULL (int,int) ;
 int FIELD_GET (int ,int) ;
 scalar_t__ MX3_PWMCR ;
 int MX3_PWMCR_EN ;
 int MX3_PWMCR_POUTC ;


 int MX3_PWMCR_PRESCALER_GET (int) ;
 scalar_t__ MX3_PWMPR ;
 int MX3_PWMPR_MAX ;
 scalar_t__ MX3_PWMSAR ;
 int NSEC_PER_SEC ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_NORMAL ;
 int clk_get_rate (int ) ;
 int dev_warn (int ,char*) ;
 int pwm_imx27_clk_disable_unprepare (struct pwm_chip*) ;
 int pwm_imx27_clk_prepare_enable (struct pwm_chip*) ;
 int readl (scalar_t__) ;
 struct pwm_imx27_chip* to_pwm_imx27_chip (struct pwm_chip*) ;

__attribute__((used)) static void pwm_imx27_get_state(struct pwm_chip *chip,
    struct pwm_device *pwm, struct pwm_state *state)
{
 struct pwm_imx27_chip *imx = to_pwm_imx27_chip(chip);
 u32 period, prescaler, pwm_clk, val;
 u64 tmp;
 int ret;

 ret = pwm_imx27_clk_prepare_enable(chip);
 if (ret < 0)
  return;

 val = readl(imx->mmio_base + MX3_PWMCR);

 if (val & MX3_PWMCR_EN)
  state->enabled = 1;
 else
  state->enabled = 0;

 switch (FIELD_GET(MX3_PWMCR_POUTC, val)) {
 case 128:
  state->polarity = PWM_POLARITY_NORMAL;
  break;
 case 129:
  state->polarity = PWM_POLARITY_INVERSED;
  break;
 default:
  dev_warn(chip->dev, "can't set polarity, output disconnected");
 }

 prescaler = MX3_PWMCR_PRESCALER_GET(val);
 pwm_clk = clk_get_rate(imx->clk_per);
 pwm_clk = DIV_ROUND_CLOSEST_ULL(pwm_clk, prescaler);
 val = readl(imx->mmio_base + MX3_PWMPR);
 period = val >= MX3_PWMPR_MAX ? MX3_PWMPR_MAX : val;


 tmp = NSEC_PER_SEC * (u64)(period + 2);
 state->period = DIV_ROUND_CLOSEST_ULL(tmp, pwm_clk);


 if (state->enabled) {
  val = readl(imx->mmio_base + MX3_PWMSAR);
  tmp = NSEC_PER_SEC * (u64)(val);
  state->duty_cycle = DIV_ROUND_CLOSEST_ULL(tmp, pwm_clk);
 } else {
  state->duty_cycle = 0;
 }

 if (!state->enabled)
  pwm_imx27_clk_disable_unprepare(chip);
}
