
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int membase; } ;
struct platform_device {int id; } ;
struct TYPE_2__ {struct uart_port port; } ;


 int altera_jtaguart_driver ;
 TYPE_1__* altera_jtaguart_ports ;
 int iounmap (int ) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int altera_jtaguart_remove(struct platform_device *pdev)
{
 struct uart_port *port;
 int i = pdev->id;

 if (i == -1)
  i = 0;

 port = &altera_jtaguart_ports[i].port;
 uart_remove_one_port(&altera_jtaguart_driver, port);
 iounmap(port->membase);

 return 0;
}
