
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int clk; int regmap; scalar_t__ have_complementary_output; } ;


 int TIM_CCER ;
 int TIM_CCER_CC1E ;
 int TIM_CCER_CC1NE ;
 int TIM_CR1 ;
 int TIM_CR1_CEN ;
 int active_channels (struct stm32_pwm*) ;
 int clk_disable (int ) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static void stm32_pwm_disable(struct stm32_pwm *priv, int ch)
{
 u32 mask;


 mask = TIM_CCER_CC1E << (ch * 4);
 if (priv->have_complementary_output)
  mask |= TIM_CCER_CC1NE << (ch * 4);

 regmap_update_bits(priv->regmap, TIM_CCER, mask, 0);


 if (!active_channels(priv))
  regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);

 clk_disable(priv->clk);
}
