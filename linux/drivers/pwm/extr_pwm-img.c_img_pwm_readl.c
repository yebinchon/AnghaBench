
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct img_pwm_chip {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 img_pwm_readl(struct img_pwm_chip *chip,
      u32 reg)
{
 return readl(chip->base + reg);
}
