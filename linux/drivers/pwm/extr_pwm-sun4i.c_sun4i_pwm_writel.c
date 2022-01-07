
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_pwm_chip {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sun4i_pwm_writel(struct sun4i_pwm_chip *chip,
        u32 val, unsigned long offset)
{
 writel(val, chip->base + offset);
}
