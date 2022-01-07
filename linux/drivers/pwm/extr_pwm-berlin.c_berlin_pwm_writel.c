
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct berlin_pwm_chip {scalar_t__ base; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void berlin_pwm_writel(struct berlin_pwm_chip *chip,
         unsigned int channel, u32 value,
         unsigned long offset)
{
 writel_relaxed(value, chip->base + channel * 0x10 + offset);
}
