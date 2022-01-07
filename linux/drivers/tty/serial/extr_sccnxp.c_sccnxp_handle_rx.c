
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int port; } ;


 int CR_CMD_BREAK_RESET ;
 int CR_CMD_STATUS_RESET ;
 int SCCNXP_CR_REG ;
 int SCCNXP_RHR_REG ;
 int SCCNXP_SR_REG ;
 int SR_BRK ;
 int SR_FE ;
 int SR_OVR ;
 int SR_PE ;
 int SR_RXRDY ;
 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 unsigned int TTY_PARITY ;
 void* sccnxp_port_read (struct uart_port*,int ) ;
 int sccnxp_port_write (struct uart_port*,int ,int ) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned int) ;
 int uart_insert_char (struct uart_port*,int,int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sccnxp_handle_rx(struct uart_port *port)
{
 u8 sr;
 unsigned int ch, flag;

 for (;;) {
  sr = sccnxp_port_read(port, SCCNXP_SR_REG);
  if (!(sr & SR_RXRDY))
   break;
  sr &= SR_PE | SR_FE | SR_OVR | SR_BRK;

  ch = sccnxp_port_read(port, SCCNXP_RHR_REG);

  port->icount.rx++;
  flag = TTY_NORMAL;

  if (unlikely(sr)) {
   if (sr & SR_BRK) {
    port->icount.brk++;
    sccnxp_port_write(port, SCCNXP_CR_REG,
        CR_CMD_BREAK_RESET);
    if (uart_handle_break(port))
     continue;
   } else if (sr & SR_PE)
    port->icount.parity++;
   else if (sr & SR_FE)
    port->icount.frame++;
   else if (sr & SR_OVR) {
    port->icount.overrun++;
    sccnxp_port_write(port, SCCNXP_CR_REG,
        CR_CMD_STATUS_RESET);
   }

   sr &= port->read_status_mask;
   if (sr & SR_BRK)
    flag = TTY_BREAK;
   else if (sr & SR_PE)
    flag = TTY_PARITY;
   else if (sr & SR_FE)
    flag = TTY_FRAME;
   else if (sr & SR_OVR)
    flag = TTY_OVERRUN;
  }

  if (uart_handle_sysrq_char(port, ch))
   continue;

  if (sr & port->ignore_status_mask)
   continue;

  uart_insert_char(port, sr, SR_OVR, ch, flag);
 }

 tty_flip_buffer_push(&port->state->port);
}
