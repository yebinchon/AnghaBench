
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W100_GPIO_PORT_A ;
 scalar_t__ mmGPIO_DATA ;
 scalar_t__ mmGPIO_DATA2 ;
 scalar_t__ remapped_regs ;
 int writel (unsigned long,scalar_t__) ;

void w100fb_gpio_write(int port, unsigned long value)
{
 if (port==W100_GPIO_PORT_A)
  writel(value, remapped_regs + mmGPIO_DATA);
 else
  writel(value, remapped_regs + mmGPIO_DATA2);
}
