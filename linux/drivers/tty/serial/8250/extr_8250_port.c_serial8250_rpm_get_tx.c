
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct uart_8250_port {int capabilities; TYPE_1__ port; int rpm_tx_active; } ;


 int UART_CAP_RPM ;
 int pm_runtime_get_sync (int ) ;
 unsigned char xchg (int *,int) ;

void serial8250_rpm_get_tx(struct uart_8250_port *p)
{
 unsigned char rpm_active;

 if (!(p->capabilities & UART_CAP_RPM))
  return;

 rpm_active = xchg(&p->rpm_tx_active, 1);
 if (rpm_active)
  return;
 pm_runtime_get_sync(p->port.dev);
}
