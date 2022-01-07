
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_gpio {scalar_t__ base; } ;


 int BIT (unsigned int) ;
 unsigned int IPROC_GPIO_REG (unsigned int,unsigned int) ;
 unsigned int IPROC_GPIO_SHIFT (unsigned int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline bool iproc_get_bit(struct iproc_gpio *chip, unsigned int reg,
      unsigned gpio)
{
 unsigned int offset = IPROC_GPIO_REG(gpio, reg);
 unsigned int shift = IPROC_GPIO_SHIFT(gpio);

 return !!(readl(chip->base + offset) & BIT(shift));
}
