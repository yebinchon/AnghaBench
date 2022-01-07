
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_pwm_chip {scalar_t__ mmio_base; } ;


 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void spear_pwm_writel(struct spear_pwm_chip *chip,
        unsigned int num, unsigned long offset,
        unsigned long val)
{
 writel_relaxed(val, chip->mmio_base + (num << 4) + offset);
}
