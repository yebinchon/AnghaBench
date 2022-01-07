
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SIRFSOC_GPIO_BANK_SIZE ;

__attribute__((used)) static inline int sirfsoc_gpio_to_bankoff(unsigned int offset)
{
 return offset % SIRFSOC_GPIO_BANK_SIZE;
}
