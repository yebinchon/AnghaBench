
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* serial_in ) (struct uart_port*,int const) ;int regshift; scalar_t__ membase; } ;



 int UART_FCR_UME ;

 int UART_IER_MSI ;

 int UART_MCR_FCM ;
 int UART_MCR_MDCE ;
 int stub1 (struct uart_port*,int const) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ingenic_uart_serial_out(struct uart_port *p, int offset, int value)
{
 int ier;

 switch (offset) {
 case 130:

  value |= UART_FCR_UME;
  break;

 case 129:




  value |= (value & 0x4) << 2;
  break;

 case 128:




  ier = p->serial_in(p, 129);

  if (ier & UART_IER_MSI)
   value |= UART_MCR_MDCE | UART_MCR_FCM;
  else
   value &= ~(UART_MCR_MDCE | UART_MCR_FCM);
  break;

 default:
  break;
 }

 writeb(value, p->membase + (offset << p->regshift));
}
