
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 int UART_LSR ;
 unsigned int UART_LSR_TEMT ;
 unsigned int readb (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void dw8250_tx_wait_empty(struct uart_port *p)
{
 unsigned int tries = 20000;
 unsigned int delay_threshold = tries - 1000;
 unsigned int lsr;

 while (tries--) {
  lsr = readb (p->membase + (UART_LSR << p->regshift));
  if (lsr & UART_LSR_TEMT)
   break;





  if (tries < delay_threshold)
   udelay (1);
 }
}
