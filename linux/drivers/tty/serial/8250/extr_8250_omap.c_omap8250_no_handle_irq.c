
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int WARN_ONCE (int,char*) ;

__attribute__((used)) static int omap8250_no_handle_irq(struct uart_port *port)
{

 WARN_ONCE(1, "Unexpected irq handling before port startup\n");
 return 0;
}
