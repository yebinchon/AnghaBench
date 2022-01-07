
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_pwm_chip {unsigned long base; } ;


 unsigned int PWM_CH_REG_OFFSET ;
 unsigned int PWM_CH_REG_SIZE ;
 int readl_relaxed (unsigned long) ;

__attribute__((used)) static inline u32 atmel_pwm_ch_readl(struct atmel_pwm_chip *chip,
         unsigned int ch, unsigned long offset)
{
 unsigned long base = PWM_CH_REG_OFFSET + ch * PWM_CH_REG_SIZE;

 return readl_relaxed(chip->base + base + offset);
}
