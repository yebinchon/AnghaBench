
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int regmap; scalar_t__ have_complementary_output; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 int PWM_POLARITY_NORMAL ;
 int TIM_CCER ;
 int TIM_CCER_CC1NP ;
 int TIM_CCER_CC1P ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int stm32_pwm_set_polarity(struct stm32_pwm *priv, int ch,
      enum pwm_polarity polarity)
{
 u32 mask;

 mask = TIM_CCER_CC1P << (ch * 4);
 if (priv->have_complementary_output)
  mask |= TIM_CCER_CC1NP << (ch * 4);

 regmap_update_bits(priv->regmap, TIM_CCER, mask,
      polarity == PWM_POLARITY_NORMAL ? 0 : mask);

 return 0;
}
