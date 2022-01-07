
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_7__ {scalar_t__ line; TYPE_2__* cons; TYPE_1__ icount; } ;
struct uart_omap_port {unsigned int lsr_break_flag; TYPE_3__ port; } ;
struct TYPE_6__ {scalar_t__ index; } ;


 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 unsigned int UART_LSR_BI ;
 unsigned int UART_LSR_DR ;
 unsigned int UART_LSR_FE ;
 unsigned int UART_LSR_OE ;
 unsigned int UART_LSR_PE ;
 int UART_RX ;
 scalar_t__ likely (unsigned int) ;
 unsigned char serial_in (struct uart_omap_port*,int ) ;
 scalar_t__ uart_handle_break (TYPE_3__*) ;
 int uart_insert_char (TYPE_3__*,unsigned int,unsigned int,int ,unsigned int) ;

__attribute__((used)) static void serial_omap_rlsi(struct uart_omap_port *up, unsigned int lsr)
{
 unsigned int flag;
 unsigned char ch = 0;

 if (likely(lsr & UART_LSR_DR))
  ch = serial_in(up, UART_RX);

 up->port.icount.rx++;
 flag = TTY_NORMAL;

 if (lsr & UART_LSR_BI) {
  flag = TTY_BREAK;
  lsr &= ~(UART_LSR_FE | UART_LSR_PE);
  up->port.icount.brk++;






  if (uart_handle_break(&up->port))
   return;

 }

 if (lsr & UART_LSR_PE) {
  flag = TTY_PARITY;
  up->port.icount.parity++;
 }

 if (lsr & UART_LSR_FE) {
  flag = TTY_FRAME;
  up->port.icount.frame++;
 }

 if (lsr & UART_LSR_OE)
  up->port.icount.overrun++;







 uart_insert_char(&up->port, lsr, UART_LSR_OE, 0, flag);
}
