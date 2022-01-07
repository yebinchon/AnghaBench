
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int regmap; } ;


 int TIM_CCER ;
 int TIM_CCER_CC1E ;
 int TIM_CCER_CC2E ;
 int TIM_CCER_CC3E ;
 int TIM_CCER_CC4E ;
 int TIM_CCER_CCXE ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int stm32_pwm_detect_channels(struct stm32_pwm *priv)
{
 u32 ccer;
 int npwm = 0;





 regmap_update_bits(priv->regmap,
      TIM_CCER, TIM_CCER_CCXE, TIM_CCER_CCXE);
 regmap_read(priv->regmap, TIM_CCER, &ccer);
 regmap_update_bits(priv->regmap, TIM_CCER, TIM_CCER_CCXE, 0);

 if (ccer & TIM_CCER_CC1E)
  npwm++;

 if (ccer & TIM_CCER_CC2E)
  npwm++;

 if (ccer & TIM_CCER_CC3E)
  npwm++;

 if (ccer & TIM_CCER_CC4E)
  npwm++;

 return npwm;
}
