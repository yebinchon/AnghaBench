
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_pwm {int have_complementary_output; int regmap; } ;


 int TIM_CCER ;
 int TIM_CCER_CC1NE ;
 int regmap_read (int ,int ,scalar_t__*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void stm32_pwm_detect_complementary(struct stm32_pwm *priv)
{
 u32 ccer;





 regmap_update_bits(priv->regmap,
      TIM_CCER, TIM_CCER_CC1NE, TIM_CCER_CC1NE);
 regmap_read(priv->regmap, TIM_CCER, &ccer);
 regmap_update_bits(priv->regmap, TIM_CCER, TIM_CCER_CC1NE, 0);

 priv->have_complementary_output = (ccer != 0);
}
