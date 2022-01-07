
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int regmap; } ;


 int TIM_CCER ;
 int TIM_CCER_CCXE ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static u32 active_channels(struct stm32_pwm *dev)
{
 u32 ccer;

 regmap_read(dev->regmap, TIM_CCER, &ccer);

 return ccer & TIM_CCER_CCXE;
}
