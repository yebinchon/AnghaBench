
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct berlin_pwm_chip {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 berlin_pwm_readl(struct berlin_pwm_chip *chip,
       unsigned int channel, unsigned long offset)
{
 return readl_relaxed(chip->base + channel * 0x10 + offset);
}
