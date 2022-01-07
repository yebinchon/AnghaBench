
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct stm32_pwm_lp {int clk; int regmap; TYPE_1__ chip; } ;
struct pwm_state {unsigned long long period; unsigned long long duty_cycle; int polarity; scalar_t__ enabled; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int EINVAL ;
 int FIELD_GET (int,int) ;
 int FIELD_PREP (int,int) ;
 unsigned long long NSEC_PER_SEC ;
 int STM32_LPTIM_ARR ;
 int STM32_LPTIM_CFGR ;
 int STM32_LPTIM_CMP ;
 unsigned long long STM32_LPTIM_CMPOKCF_ARROKCF ;
 int STM32_LPTIM_CMPOK_ARROK ;
 int STM32_LPTIM_CNTSTRT ;
 int STM32_LPTIM_CR ;
 unsigned long long STM32_LPTIM_ENABLE ;
 int STM32_LPTIM_ICR ;
 int STM32_LPTIM_ISR ;
 unsigned long long STM32_LPTIM_MAX_ARR ;
 int STM32_LPTIM_MAX_PRESCALER ;
 int STM32_LPTIM_PRESC ;
 int STM32_LPTIM_WAVPOL ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int dev_dbg (int ,char*,unsigned long long) ;
 int dev_err (int ,char*) ;
 int do_div (unsigned long long,unsigned long long) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,unsigned long long) ;
 struct stm32_pwm_lp* to_stm32_pwm_lp (struct pwm_chip*) ;

__attribute__((used)) static int stm32_pwm_lp_apply(struct pwm_chip *chip, struct pwm_device *pwm,
         const struct pwm_state *state)
{
 struct stm32_pwm_lp *priv = to_stm32_pwm_lp(chip);
 unsigned long long prd, div, dty;
 struct pwm_state cstate;
 u32 val, mask, cfgr, presc = 0;
 bool reenable;
 int ret;

 pwm_get_state(pwm, &cstate);
 reenable = !cstate.enabled;

 if (!state->enabled) {
  if (cstate.enabled) {

   ret = regmap_write(priv->regmap, STM32_LPTIM_CR, 0);
   if (ret)
    return ret;

   clk_disable(priv->clk);
  }
  return 0;
 }


 div = (unsigned long long)clk_get_rate(priv->clk) * state->period;
 do_div(div, NSEC_PER_SEC);
 if (!div) {

  dev_dbg(priv->chip.dev, "Can't reach %u ns\n", state->period);
  return -EINVAL;
 }

 prd = div;
 while (div > STM32_LPTIM_MAX_ARR) {
  presc++;
  if ((1 << presc) > STM32_LPTIM_MAX_PRESCALER) {
   dev_err(priv->chip.dev, "max prescaler exceeded\n");
   return -EINVAL;
  }
  div = prd >> presc;
 }
 prd = div;


 dty = prd * state->duty_cycle;
 do_div(dty, state->period);

 if (!cstate.enabled) {

  ret = clk_enable(priv->clk);
  if (ret)
   return ret;
 }

 ret = regmap_read(priv->regmap, STM32_LPTIM_CFGR, &cfgr);
 if (ret)
  goto err;

 if ((FIELD_GET(STM32_LPTIM_PRESC, cfgr) != presc) ||
     (FIELD_GET(STM32_LPTIM_WAVPOL, cfgr) != state->polarity)) {
  val = FIELD_PREP(STM32_LPTIM_PRESC, presc);
  val |= FIELD_PREP(STM32_LPTIM_WAVPOL, state->polarity);
  mask = STM32_LPTIM_PRESC | STM32_LPTIM_WAVPOL;


  reenable = 1;
  ret = regmap_write(priv->regmap, STM32_LPTIM_CR, 0);
  if (ret)
   goto err;

  ret = regmap_update_bits(priv->regmap, STM32_LPTIM_CFGR, mask,
      val);
  if (ret)
   goto err;
 }

 if (reenable) {

  ret = regmap_write(priv->regmap, STM32_LPTIM_CR,
       STM32_LPTIM_ENABLE);
  if (ret)
   goto err;
 }

 ret = regmap_write(priv->regmap, STM32_LPTIM_ARR, prd - 1);
 if (ret)
  goto err;

 ret = regmap_write(priv->regmap, STM32_LPTIM_CMP, prd - (1 + dty));
 if (ret)
  goto err;


 ret = regmap_read_poll_timeout(priv->regmap, STM32_LPTIM_ISR, val,
           (val & STM32_LPTIM_CMPOK_ARROK),
           100, 1000);
 if (ret) {
  dev_err(priv->chip.dev, "ARR/CMP registers write issue\n");
  goto err;
 }
 ret = regmap_write(priv->regmap, STM32_LPTIM_ICR,
      STM32_LPTIM_CMPOKCF_ARROKCF);
 if (ret)
  goto err;

 if (reenable) {

  ret = regmap_update_bits(priv->regmap, STM32_LPTIM_CR,
      STM32_LPTIM_CNTSTRT,
      STM32_LPTIM_CNTSTRT);
  if (ret) {
   regmap_write(priv->regmap, STM32_LPTIM_CR, 0);
   goto err;
  }
 }

 return 0;
err:
 if (!cstate.enabled)
  clk_disable(priv->clk);

 return ret;
}
