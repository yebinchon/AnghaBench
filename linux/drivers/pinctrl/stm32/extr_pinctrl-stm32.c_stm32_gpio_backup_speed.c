
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stm32_gpio_bank {size_t* pin_backup; } ;


 size_t STM32_GPIO_BKP_SPEED_MASK ;
 size_t STM32_GPIO_BKP_SPEED_SHIFT ;

__attribute__((used)) static void stm32_gpio_backup_speed(struct stm32_gpio_bank *bank, u32 offset,
        u32 speed)
{
 bank->pin_backup[offset] &= ~STM32_GPIO_BKP_SPEED_MASK;
 bank->pin_backup[offset] |= speed << STM32_GPIO_BKP_SPEED_SHIFT;
}
