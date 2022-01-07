
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int VT8500_URFIDX ;
 int vt8500_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int vt8500_tx_empty(struct uart_port *port)
{
 return (vt8500_read(port, VT8500_URFIDX) & 0x1f) < 16 ?
      TIOCSER_TEMT : 0;
}
