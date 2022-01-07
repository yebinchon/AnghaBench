
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {int dummy; } ;


 int ARRAY_SIZE (struct uart_amba_port**) ;
 struct uart_amba_port** amba_ports ;
 int amba_reg ;
 int pl011_dma_remove (struct uart_amba_port*) ;
 int uart_unregister_driver (int *) ;

__attribute__((used)) static void pl011_unregister_port(struct uart_amba_port *uap)
{
 int i;
 bool busy = 0;

 for (i = 0; i < ARRAY_SIZE(amba_ports); i++) {
  if (amba_ports[i] == uap)
   amba_ports[i] = ((void*)0);
  else if (amba_ports[i])
   busy = 1;
 }
 pl011_dma_remove(uap);
 if (!busy)
  uart_unregister_driver(&amba_reg);
}
