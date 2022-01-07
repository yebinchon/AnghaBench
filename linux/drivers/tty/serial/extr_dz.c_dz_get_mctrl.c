
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ line; } ;
struct dz_port {TYPE_1__ port; } ;


 scalar_t__ DZ_MODEM ;
 int DZ_MODEM_DSR ;
 int DZ_MSR ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 int dz_in (struct dz_port*,int ) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static unsigned int dz_get_mctrl(struct uart_port *uport)
{



 struct dz_port *dport = to_dport(uport);
 unsigned int mctrl = TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;

 if (dport->port.line == DZ_MODEM) {
  if (dz_in(dport, DZ_MSR) & DZ_MODEM_DSR)
   mctrl &= ~TIOCM_DSR;
 }

 return mctrl;
}
