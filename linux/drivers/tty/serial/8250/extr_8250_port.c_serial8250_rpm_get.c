
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct uart_8250_port {int capabilities; TYPE_1__ port; } ;


 int UART_CAP_RPM ;
 int pm_runtime_get_sync (int ) ;

void serial8250_rpm_get(struct uart_8250_port *p)
{
 if (!(p->capabilities & UART_CAP_RPM))
  return;
 pm_runtime_get_sync(p->port.dev);
}
