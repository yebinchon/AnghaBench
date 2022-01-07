
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_6__ {unsigned int read_status_mask; TYPE_1__ icount; } ;
struct uart_amba_port {TYPE_2__ port; } ;


 int REG_DR ;
 int REG_FR ;
 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 unsigned int UART011_DR_BE ;
 unsigned int UART011_DR_FE ;
 unsigned int UART011_DR_OE ;
 unsigned int UART011_DR_PE ;
 int UART01x_FR_RXFE ;
 unsigned int UART_DR_ERROR ;
 int UART_DUMMY_DR_RX ;
 int pl011_read (struct uart_amba_port*,int ) ;
 scalar_t__ uart_handle_break (TYPE_2__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_2__*,unsigned int) ;
 int uart_insert_char (TYPE_2__*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static int pl011_fifo_to_tty(struct uart_amba_port *uap)
{
 u16 status;
 unsigned int ch, flag, fifotaken;

 for (fifotaken = 0; fifotaken != 256; fifotaken++) {
  status = pl011_read(uap, REG_FR);
  if (status & UART01x_FR_RXFE)
   break;


  ch = pl011_read(uap, REG_DR) | UART_DUMMY_DR_RX;
  flag = TTY_NORMAL;
  uap->port.icount.rx++;

  if (unlikely(ch & UART_DR_ERROR)) {
   if (ch & UART011_DR_BE) {
    ch &= ~(UART011_DR_FE | UART011_DR_PE);
    uap->port.icount.brk++;
    if (uart_handle_break(&uap->port))
     continue;
   } else if (ch & UART011_DR_PE)
    uap->port.icount.parity++;
   else if (ch & UART011_DR_FE)
    uap->port.icount.frame++;
   if (ch & UART011_DR_OE)
    uap->port.icount.overrun++;

   ch &= uap->port.read_status_mask;

   if (ch & UART011_DR_BE)
    flag = TTY_BREAK;
   else if (ch & UART011_DR_PE)
    flag = TTY_PARITY;
   else if (ch & UART011_DR_FE)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(&uap->port, ch & 255))
   continue;

  uart_insert_char(&uap->port, ch, UART011_DR_OE, ch, flag);
 }

 return fifotaken;
}
