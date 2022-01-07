
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct uart_port port; } ;


 int MCF_MAXPORTS ;
 int mcf_driver ;
 TYPE_1__* mcf_ports ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int mcf_remove(struct platform_device *pdev)
{
 struct uart_port *port;
 int i;

 for (i = 0; (i < MCF_MAXPORTS); i++) {
  port = &mcf_ports[i].port;
  if (port)
   uart_remove_one_port(&mcf_driver, port);
 }

 return 0;
}
