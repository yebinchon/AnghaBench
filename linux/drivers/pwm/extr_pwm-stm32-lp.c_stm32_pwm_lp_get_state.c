
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct stm32_pwm_lp {int regmap; int clk; } ;
struct pwm_state {int enabled; void* duty_cycle; void* period; void* polarity; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 void* DIV_ROUND_CLOSEST_ULL (int,unsigned long) ;
 void* FIELD_GET (int ,int) ;
 int NSEC_PER_SEC ;
 int STM32_LPTIM_ARR ;
 int STM32_LPTIM_CFGR ;
 int STM32_LPTIM_CMP ;
 int STM32_LPTIM_CR ;
 int STM32_LPTIM_ENABLE ;
 int STM32_LPTIM_PRESC ;
 int STM32_LPTIM_WAVPOL ;
 int clk_enable (int ) ;
 unsigned long clk_get_rate (int ) ;
 int regmap_read (int ,int ,int*) ;
 struct stm32_pwm_lp* to_stm32_pwm_lp (struct pwm_chip*) ;

__attribute__((used)) static void stm32_pwm_lp_get_state(struct pwm_chip *chip,
       struct pwm_device *pwm,
       struct pwm_state *state)
{
 struct stm32_pwm_lp *priv = to_stm32_pwm_lp(chip);
 unsigned long rate = clk_get_rate(priv->clk);
 u32 val, presc, prd;
 u64 tmp;

 regmap_read(priv->regmap, STM32_LPTIM_CR, &val);
 state->enabled = !!FIELD_GET(STM32_LPTIM_ENABLE, val);

 if (state->enabled)
  clk_enable(priv->clk);

 regmap_read(priv->regmap, STM32_LPTIM_CFGR, &val);
 presc = FIELD_GET(STM32_LPTIM_PRESC, val);
 state->polarity = FIELD_GET(STM32_LPTIM_WAVPOL, val);

 regmap_read(priv->regmap, STM32_LPTIM_ARR, &prd);
 tmp = prd + 1;
 tmp = (tmp << presc) * NSEC_PER_SEC;
 state->period = DIV_ROUND_CLOSEST_ULL(tmp, rate);

 regmap_read(priv->regmap, STM32_LPTIM_CMP, &val);
 tmp = prd - val;
 tmp = (tmp << presc) * NSEC_PER_SEC;
 state->duty_cycle = DIV_ROUND_CLOSEST_ULL(tmp, rate);
}
