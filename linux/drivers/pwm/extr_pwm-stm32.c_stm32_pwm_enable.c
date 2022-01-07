
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int regmap; scalar_t__ have_complementary_output; int clk; } ;


 int TIM_CCER ;
 int TIM_CCER_CC1E ;
 int TIM_CCER_CC1NE ;
 int TIM_CR1 ;
 int TIM_CR1_CEN ;
 int TIM_EGR ;
 int TIM_EGR_UG ;
 int clk_enable (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int stm32_pwm_enable(struct stm32_pwm *priv, int ch)
{
 u32 mask;
 int ret;

 ret = clk_enable(priv->clk);
 if (ret)
  return ret;


 mask = TIM_CCER_CC1E << (ch * 4);
 if (priv->have_complementary_output)
  mask |= TIM_CCER_CC1NE << (ch * 4);

 regmap_update_bits(priv->regmap, TIM_CCER, mask, mask);


 regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);


 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, TIM_CR1_CEN);

 return 0;
}
