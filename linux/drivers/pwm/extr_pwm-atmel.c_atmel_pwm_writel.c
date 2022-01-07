
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_pwm_chip {scalar_t__ base; } ;


 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void atmel_pwm_writel(struct atmel_pwm_chip *chip,
        unsigned long offset, unsigned long val)
{
 writel_relaxed(val, chip->base + offset);
}
