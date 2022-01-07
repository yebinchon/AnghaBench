
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct asc_port {int rts; } ;


 int ASC_CTL ;
 int ASC_CTL_CTSENABLE ;
 unsigned int TIOCM_RTS ;
 int asc_in (struct uart_port*,int ) ;
 int gpiod_set_value (int ,unsigned int) ;
 struct asc_port* to_asc_port (struct uart_port*) ;

__attribute__((used)) static void asc_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct asc_port *ascport = to_asc_port(port);
 if (!ascport->rts)
  return;


 if (asc_in(port, ASC_CTL) & ASC_CTL_CTSENABLE)
  return;

 gpiod_set_value(ascport->rts, mctrl & TIOCM_RTS);
}
