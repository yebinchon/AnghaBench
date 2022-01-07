
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct stm32_pwm {unsigned long long max_arr; int lock; int clk; int regmap; TYPE_1__ chip; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct pwm_capture {void* duty_cycle; void* period; } ;


 void* DIV_ROUND_UP_ULL (unsigned long long,unsigned long) ;
 int EBUSY ;
 int EINVAL ;
 int FIELD_PREP (int,unsigned int) ;
 unsigned int MAX_TIM_ICPSC ;
 unsigned int MAX_TIM_PSC ;
 unsigned long MSEC_PER_SEC ;
 unsigned long NSEC_PER_MSEC ;
 unsigned long long NSEC_PER_SEC ;
 int TIM_ARR ;
 int TIM_CCER ;
 int TIM_CCER_CC12P ;
 int TIM_CCER_CC2P ;
 int TIM_CCER_CC34P ;
 int TIM_CCER_CC4P ;
 int TIM_CCMR1 ;
 int TIM_CCMR2 ;
 int TIM_CCMR_CC1S ;
 int TIM_CCMR_CC1S_TI1 ;
 int TIM_CCMR_CC1S_TI2 ;
 int TIM_CCMR_CC2S ;
 int TIM_CCMR_CC2S_TI1 ;
 int TIM_CCMR_CC2S_TI2 ;
 int TIM_CCMR_IC1PSC ;
 int TIM_CCMR_IC2PSC ;
 int TIM_PSC ;
 scalar_t__ active_channels (struct stm32_pwm*) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int do_div (unsigned long long,unsigned long) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,unsigned int) ;
 int stm32_pwm_raw_capture (struct stm32_pwm*,struct pwm_device*,unsigned long,int*,int*) ;
 struct stm32_pwm* to_stm32_pwm_dev (struct pwm_chip*) ;

__attribute__((used)) static int stm32_pwm_capture(struct pwm_chip *chip, struct pwm_device *pwm,
        struct pwm_capture *result, unsigned long tmo_ms)
{
 struct stm32_pwm *priv = to_stm32_pwm_dev(chip);
 unsigned long long prd, div, dty;
 unsigned long rate;
 unsigned int psc = 0, icpsc, scale;
 u32 raw_prd = 0, raw_dty = 0;
 int ret = 0;

 mutex_lock(&priv->lock);

 if (active_channels(priv)) {
  ret = -EBUSY;
  goto unlock;
 }

 ret = clk_enable(priv->clk);
 if (ret) {
  dev_err(priv->chip.dev, "failed to enable counter clock\n");
  goto unlock;
 }

 rate = clk_get_rate(priv->clk);
 if (!rate) {
  ret = -EINVAL;
  goto clk_dis;
 }


 div = (unsigned long long)rate * (unsigned long long)tmo_ms;
 do_div(div, MSEC_PER_SEC);
 prd = div;
 while ((div > priv->max_arr) && (psc < MAX_TIM_PSC)) {
  psc++;
  div = prd;
  do_div(div, psc + 1);
 }
 regmap_write(priv->regmap, TIM_ARR, priv->max_arr);
 regmap_write(priv->regmap, TIM_PSC, psc);


 regmap_update_bits(priv->regmap,
      pwm->hwpwm < 2 ? TIM_CCMR1 : TIM_CCMR2,
      TIM_CCMR_CC1S | TIM_CCMR_CC2S, pwm->hwpwm & 0x1 ?
      TIM_CCMR_CC1S_TI2 | TIM_CCMR_CC2S_TI2 :
      TIM_CCMR_CC1S_TI1 | TIM_CCMR_CC2S_TI1);


 regmap_update_bits(priv->regmap, TIM_CCER, pwm->hwpwm < 2 ?
      TIM_CCER_CC12P : TIM_CCER_CC34P, pwm->hwpwm < 2 ?
      TIM_CCER_CC2P : TIM_CCER_CC4P);

 ret = stm32_pwm_raw_capture(priv, pwm, tmo_ms, &raw_prd, &raw_dty);
 if (ret)
  goto stop;






 if (raw_prd) {
  u32 max_arr = priv->max_arr - 0x1000;

  scale = max_arr / min(max_arr, raw_prd);
 } else {
  scale = priv->max_arr;
 }

 if (psc && scale > 1) {

  psc /= scale;
  regmap_write(priv->regmap, TIM_PSC, psc);
  ret = stm32_pwm_raw_capture(priv, pwm, tmo_ms, &raw_prd,
         &raw_dty);
  if (ret)
   goto stop;
 }


 prd = (unsigned long long)raw_prd * (psc + 1) * NSEC_PER_SEC;
 do_div(prd, rate);

 for (icpsc = 0; icpsc < MAX_TIM_ICPSC ; icpsc++) {

  if (raw_prd >= (priv->max_arr - 0x1000) >> (icpsc + 1))
   break;
  if (prd >= (tmo_ms * NSEC_PER_MSEC) >> (icpsc + 2))
   break;
 }

 if (!icpsc)
  goto done;


 regmap_update_bits(priv->regmap,
      pwm->hwpwm < 2 ? TIM_CCMR1 : TIM_CCMR2,
      TIM_CCMR_IC1PSC | TIM_CCMR_IC2PSC,
      FIELD_PREP(TIM_CCMR_IC1PSC, icpsc) |
      FIELD_PREP(TIM_CCMR_IC2PSC, icpsc));

 ret = stm32_pwm_raw_capture(priv, pwm, tmo_ms, &raw_prd, &raw_dty);
 if (ret)
  goto stop;

 if (raw_dty >= (raw_prd >> icpsc)) {
  raw_dty = (raw_prd >> icpsc) - (raw_prd - raw_dty);
 }

done:
 prd = (unsigned long long)raw_prd * (psc + 1) * NSEC_PER_SEC;
 result->period = DIV_ROUND_UP_ULL(prd, rate << icpsc);
 dty = (unsigned long long)raw_dty * (psc + 1) * NSEC_PER_SEC;
 result->duty_cycle = DIV_ROUND_UP_ULL(dty, rate);
stop:
 regmap_write(priv->regmap, TIM_CCER, 0);
 regmap_write(priv->regmap, pwm->hwpwm < 2 ? TIM_CCMR1 : TIM_CCMR2, 0);
 regmap_write(priv->regmap, TIM_PSC, 0);
clk_dis:
 clk_disable(priv->clk);
unlock:
 mutex_unlock(&priv->lock);

 return ret;
}
