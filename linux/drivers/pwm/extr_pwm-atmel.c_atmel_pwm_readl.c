
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_pwm_chip {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 atmel_pwm_readl(struct atmel_pwm_chip *chip,
      unsigned long offset)
{
 return readl_relaxed(chip->base + offset);
}
