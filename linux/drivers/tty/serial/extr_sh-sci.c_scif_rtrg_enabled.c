
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int HSRTRGR ;
 int SCFCR ;
 int SCFCR_RTRG0 ;
 int SCFCR_RTRG1 ;
 TYPE_1__* sci_getreg (struct uart_port*,int ) ;
 int serial_port_in (struct uart_port*,int ) ;

__attribute__((used)) static int scif_rtrg_enabled(struct uart_port *port)
{
 if (sci_getreg(port, HSRTRGR)->size)
  return serial_port_in(port, HSRTRGR) != 0;
 else
  return (serial_port_in(port, SCFCR) &
   (SCFCR_RTRG0 | SCFCR_RTRG1)) != 0;
}
