
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;





 int UNIPHIER_UART_CHAR_FCR ;
 int UNIPHIER_UART_LCR_MCR ;
 int UNIPHIER_UART_REGSHIFT ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int uniphier_serial_in(struct uart_port *p, int offset)
{
 unsigned int valshift = 0;

 switch (offset) {
 case 128:

  valshift = 8;
  offset = UNIPHIER_UART_CHAR_FCR;
  break;
 case 130:
  valshift = 8;

 case 129:
  offset = UNIPHIER_UART_LCR_MCR;
  break;
 default:
  offset <<= UNIPHIER_UART_REGSHIFT;
  break;
 }






 return (readl(p->membase + offset) >> valshift) & 0xff;
}
