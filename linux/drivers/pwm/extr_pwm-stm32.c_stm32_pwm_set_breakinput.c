
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int regmap; } ;


 int EINVAL ;
 int TIM_BDTR ;
 int TIM_BDTR_BK2E ;
 int TIM_BDTR_BK2F ;
 int TIM_BDTR_BK2F_SHIFT ;
 int TIM_BDTR_BK2P ;
 int TIM_BDTR_BKE ;
 int TIM_BDTR_BKF ;
 int TIM_BDTR_BKF_MASK ;
 int TIM_BDTR_BKF_SHIFT ;
 int TIM_BDTR_BKP ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int stm32_pwm_set_breakinput(struct stm32_pwm *priv,
        int index, int level, int filter)
{
 u32 bke = (index == 0) ? TIM_BDTR_BKE : TIM_BDTR_BK2E;
 int shift = (index == 0) ? TIM_BDTR_BKF_SHIFT : TIM_BDTR_BK2F_SHIFT;
 u32 mask = (index == 0) ? TIM_BDTR_BKE | TIM_BDTR_BKP | TIM_BDTR_BKF
    : TIM_BDTR_BK2E | TIM_BDTR_BK2P | TIM_BDTR_BK2F;
 u32 bdtr = bke;





 if (level)
  bdtr |= TIM_BDTR_BKP | TIM_BDTR_BK2P;

 bdtr |= (filter & TIM_BDTR_BKF_MASK) << shift;

 regmap_update_bits(priv->regmap, TIM_BDTR, mask, bdtr);

 regmap_read(priv->regmap, TIM_BDTR, &bdtr);

 return (bdtr & bke) ? 0 : -EINVAL;
}
