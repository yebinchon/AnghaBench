
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int VT8500_BREAK ;
 int VT8500_URLCR ;
 int vt8500_read (struct uart_port*,int ) ;
 int vt8500_write (struct uart_port*,int,int ) ;

__attribute__((used)) static void vt8500_break_ctl(struct uart_port *port, int break_ctl)
{
 if (break_ctl)
  vt8500_write(port,
        vt8500_read(port, VT8500_URLCR) | VT8500_BREAK,
        VT8500_URLCR);
}
