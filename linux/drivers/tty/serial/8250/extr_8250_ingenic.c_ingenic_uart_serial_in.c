
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;



 unsigned int UART_FCR_UME ;

 unsigned int UART_MCR_FCM ;
 unsigned int UART_MCR_MDCE ;
 unsigned int readb (scalar_t__) ;

__attribute__((used)) static unsigned int ingenic_uart_serial_in(struct uart_port *p, int offset)
{
 unsigned int value;

 value = readb(p->membase + (offset << p->regshift));


 switch (offset) {
 case 129:
  value &= ~UART_FCR_UME;
  break;

 case 128:
  value &= ~(UART_MCR_MDCE | UART_MCR_FCM);
  break;

 default:
  break;
 }
 return value;
}
