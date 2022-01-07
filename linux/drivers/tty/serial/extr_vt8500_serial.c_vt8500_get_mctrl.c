
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_CTS ;
 int VT8500_URUSR ;
 unsigned int vt8500_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int vt8500_get_mctrl(struct uart_port *port)
{
 unsigned int usr;

 usr = vt8500_read(port, VT8500_URUSR);
 if (usr & (1 << 4))
  return TIOCM_CTS;
 else
  return 0;
}
