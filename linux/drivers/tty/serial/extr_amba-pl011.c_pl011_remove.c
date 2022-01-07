
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {int port; } ;
struct amba_device {int dummy; } ;


 struct uart_amba_port* amba_get_drvdata (struct amba_device*) ;
 int amba_reg ;
 int pl011_unregister_port (struct uart_amba_port*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int pl011_remove(struct amba_device *dev)
{
 struct uart_amba_port *uap = amba_get_drvdata(dev);

 uart_remove_one_port(&amba_reg, &uap->port);
 pl011_unregister_port(uap);
 return 0;
}
