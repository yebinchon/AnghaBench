
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int regmap; } ;


 int EINVAL ;
 int TIM_CCR1 ;
 int TIM_CCR2 ;
 int TIM_CCR3 ;
 int TIM_CCR4 ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int write_ccrx(struct stm32_pwm *dev, int ch, u32 value)
{
 switch (ch) {
 case 0:
  return regmap_write(dev->regmap, TIM_CCR1, value);
 case 1:
  return regmap_write(dev->regmap, TIM_CCR2, value);
 case 2:
  return regmap_write(dev->regmap, TIM_CCR3, value);
 case 3:
  return regmap_write(dev->regmap, TIM_CCR4, value);
 }
 return -EINVAL;
}
