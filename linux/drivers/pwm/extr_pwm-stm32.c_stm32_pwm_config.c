
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct stm32_pwm {unsigned long long max_arr; int regmap; int clk; } ;


 unsigned int CCMR_CHANNEL_MASK ;
 int CCMR_CHANNEL_SHIFT ;
 int EBUSY ;
 int EINVAL ;
 unsigned int MAX_TIM_PSC ;
 int NSEC_PER_SEC ;
 int TIM_ARR ;
 int TIM_BDTR ;
 unsigned int TIM_BDTR_AOE ;
 unsigned int TIM_BDTR_MOE ;
 int TIM_CCMR1 ;
 int TIM_CCMR2 ;
 unsigned int TIM_CCMR_M1 ;
 unsigned int TIM_CCMR_PE ;
 int TIM_CR1 ;
 unsigned int TIM_CR1_ARPE ;
 int TIM_PSC ;
 int active_channels (struct stm32_pwm*) ;
 scalar_t__ clk_get_rate (int ) ;
 int do_div (unsigned long long,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned long long) ;
 int write_ccrx (struct stm32_pwm*,int,unsigned long long) ;

__attribute__((used)) static int stm32_pwm_config(struct stm32_pwm *priv, int ch,
       int duty_ns, int period_ns)
{
 unsigned long long prd, div, dty;
 unsigned int prescaler = 0;
 u32 ccmr, mask, shift;


 div = (unsigned long long)clk_get_rate(priv->clk) * period_ns;

 do_div(div, NSEC_PER_SEC);
 prd = div;

 while (div > priv->max_arr) {
  prescaler++;
  div = prd;
  do_div(div, prescaler + 1);
 }

 prd = div;

 if (prescaler > MAX_TIM_PSC)
  return -EINVAL;





 if (active_channels(priv) & ~(1 << ch * 4)) {
  u32 psc, arr;

  regmap_read(priv->regmap, TIM_PSC, &psc);
  regmap_read(priv->regmap, TIM_ARR, &arr);

  if ((psc != prescaler) || (arr != prd - 1))
   return -EBUSY;
 }

 regmap_write(priv->regmap, TIM_PSC, prescaler);
 regmap_write(priv->regmap, TIM_ARR, prd - 1);
 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, TIM_CR1_ARPE);


 dty = prd * duty_ns;
 do_div(dty, period_ns);

 write_ccrx(priv, ch, dty);


 shift = (ch & 0x1) * CCMR_CHANNEL_SHIFT;
 ccmr = (TIM_CCMR_PE | TIM_CCMR_M1) << shift;
 mask = CCMR_CHANNEL_MASK << shift;

 if (ch < 2)
  regmap_update_bits(priv->regmap, TIM_CCMR1, mask, ccmr);
 else
  regmap_update_bits(priv->regmap, TIM_CCMR2, mask, ccmr);

 regmap_update_bits(priv->regmap, TIM_BDTR,
      TIM_BDTR_MOE | TIM_BDTR_AOE,
      TIM_BDTR_MOE | TIM_BDTR_AOE);

 return 0;
}
