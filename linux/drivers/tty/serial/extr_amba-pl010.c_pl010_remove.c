
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {int port; } ;
struct amba_device {int dummy; } ;


 int ARRAY_SIZE (struct uart_amba_port**) ;
 struct uart_amba_port* amba_get_drvdata (struct amba_device*) ;
 struct uart_amba_port** amba_ports ;
 int amba_reg ;
 int uart_remove_one_port (int *,int *) ;
 int uart_unregister_driver (int *) ;

__attribute__((used)) static int pl010_remove(struct amba_device *dev)
{
 struct uart_amba_port *uap = amba_get_drvdata(dev);
 int i;
 bool busy = 0;

 uart_remove_one_port(&amba_reg, &uap->port);

 for (i = 0; i < ARRAY_SIZE(amba_ports); i++)
  if (amba_ports[i] == uap)
   amba_ports[i] = ((void*)0);
  else if (amba_ports[i])
   busy = 1;

 if (!busy)
  uart_unregister_driver(&amba_reg);

 return 0;
}
