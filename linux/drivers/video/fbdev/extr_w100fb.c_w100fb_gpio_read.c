
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W100_GPIO_PORT_A ;
 scalar_t__ mmGPIO_DATA ;
 scalar_t__ mmGPIO_DATA2 ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ remapped_regs ;

unsigned long w100fb_gpio_read(int port)
{
 unsigned long value;

 if (port==W100_GPIO_PORT_A)
  value = readl(remapped_regs + mmGPIO_DATA);
 else
  value = readl(remapped_regs + mmGPIO_DATA2);

 return value;
}
