
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx; } ;
struct TYPE_5__ {TYPE_1__ icount; } ;
struct uart_omap_port {TYPE_2__ port; } ;


 unsigned int TTY_NORMAL ;
 unsigned int UART_LSR_DR ;
 int UART_LSR_OE ;
 int UART_RX ;
 unsigned char serial_in (struct uart_omap_port*,int ) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_2__*,unsigned char) ;
 int uart_insert_char (TYPE_2__*,unsigned int,int ,unsigned char,unsigned int) ;

__attribute__((used)) static void serial_omap_rdi(struct uart_omap_port *up, unsigned int lsr)
{
 unsigned char ch = 0;
 unsigned int flag;

 if (!(lsr & UART_LSR_DR))
  return;

 ch = serial_in(up, UART_RX);
 flag = TTY_NORMAL;
 up->port.icount.rx++;

 if (uart_handle_sysrq_char(&up->port, ch))
  return;

 uart_insert_char(&up->port, lsr, UART_LSR_OE, ch, flag);
}
