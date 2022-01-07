
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_pwm_chip {unsigned long base; } ;


 unsigned int PWM_CH_REG_OFFSET ;
 unsigned int PWM_CH_REG_SIZE ;
 int writel_relaxed (unsigned long,unsigned long) ;

__attribute__((used)) static inline void atmel_pwm_ch_writel(struct atmel_pwm_chip *chip,
           unsigned int ch, unsigned long offset,
           unsigned long val)
{
 unsigned long base = PWM_CH_REG_OFFSET + ch * PWM_CH_REG_SIZE;

 writel_relaxed(val, chip->base + base + offset);
}
