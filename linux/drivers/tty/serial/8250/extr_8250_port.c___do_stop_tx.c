
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 scalar_t__ serial8250_clear_THRI (struct uart_8250_port*) ;
 int serial8250_rpm_put_tx (struct uart_8250_port*) ;

__attribute__((used)) static inline void __do_stop_tx(struct uart_8250_port *p)
{
 if (serial8250_clear_THRI(p))
  serial8250_rpm_put_tx(p);
}
