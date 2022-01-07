
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;


 unsigned int DIV_ROUND_CLOSEST (int ,unsigned int) ;

__attribute__((used)) static unsigned int xr17v35x_get_divisor(struct uart_port *p, unsigned int baud,
      unsigned int *frac)
{
 unsigned int quot_16;

 quot_16 = DIV_ROUND_CLOSEST(p->uartclk, baud);
 *frac = quot_16 & 0x0f;

 return quot_16 >> 4;
}
