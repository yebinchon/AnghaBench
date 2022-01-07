
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_pwm_chip {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 sun4i_pwm_readl(struct sun4i_pwm_chip *chip,
      unsigned long offset)
{
 return readl(chip->base + offset);
}
