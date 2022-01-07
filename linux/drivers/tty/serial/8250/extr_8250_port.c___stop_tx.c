
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {struct uart_8250_em485* em485; } ;
struct uart_8250_em485 {int * active_timer; } ;


 unsigned char BOTH_EMPTY ;
 int UART_LSR ;
 int __do_stop_tx (struct uart_8250_port*) ;
 int __stop_tx_rs485 (struct uart_8250_port*) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;

__attribute__((used)) static inline void __stop_tx(struct uart_8250_port *p)
{
 struct uart_8250_em485 *em485 = p->em485;

 if (em485) {
  unsigned char lsr = serial_in(p, UART_LSR);






  if ((lsr & BOTH_EMPTY) != BOTH_EMPTY)
   return;

  em485->active_timer = ((void*)0);

  __stop_tx_rs485(p);
 }
 __do_stop_tx(p);
}
