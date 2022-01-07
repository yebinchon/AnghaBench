
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int * membase; int dev; } ;
struct platform_device {int dev; } ;


 int UPF_IOREMAP ;
 int devm_iounmap (int *,int *) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void
lqasc_release_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);

 if (port->flags & UPF_IOREMAP) {
  devm_iounmap(&pdev->dev, port->membase);
  port->membase = ((void*)0);
 }
}
