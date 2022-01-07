
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_RTS ;
 unsigned int VT8500_RTS ;
 int VT8500_URLCR ;
 unsigned int vt8500_read (struct uart_port*,int ) ;
 int vt8500_write (struct uart_port*,unsigned int,int ) ;

__attribute__((used)) static void vt8500_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 unsigned int lcr = vt8500_read(port, VT8500_URLCR);

 if (mctrl & TIOCM_RTS)
  lcr |= VT8500_RTS;
 else
  lcr &= ~VT8500_RTS;

 vt8500_write(port, lcr, VT8500_URLCR);
}
