
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int rx; int brk; int overrun; } ;
struct uart_port {int read_status_mask; int lock; TYPE_2__ icount; int dev; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct msm_dma {int enable_bit; scalar_t__* virt; int dir; int phys; int count; } ;
struct msm_port {int break_detected; struct msm_dma rx_dma; struct uart_port uart; } ;
struct TYPE_3__ {struct tty_port port; } ;


 char TTY_BREAK ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 int UARTDM_DMEN ;
 int UARTDM_RX_SIZE ;
 int UARTDM_RX_TOTAL_SNAP ;
 int UART_CR ;
 int UART_CR_CMD_RESET_ERR ;
 int UART_SR ;
 int UART_SR_OVERRUN ;
 int UART_SR_RX_BREAK ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int msm_read (struct uart_port*,int ) ;
 int msm_start_rx_dma (struct msm_port*) ;
 int msm_write (struct uart_port*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,scalar_t__,char) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_sysrq_char (struct uart_port*,scalar_t__) ;

__attribute__((used)) static void msm_complete_rx_dma(void *args)
{
 struct msm_port *msm_port = args;
 struct uart_port *port = &msm_port->uart;
 struct tty_port *tport = &port->state->port;
 struct msm_dma *dma = &msm_port->rx_dma;
 int count = 0, i, sysrq;
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&port->lock, flags);


 if (!dma->count)
  goto done;

 val = msm_read(port, UARTDM_DMEN);
 val &= ~dma->enable_bit;
 msm_write(port, val, UARTDM_DMEN);

 if (msm_read(port, UART_SR) & UART_SR_OVERRUN) {
  port->icount.overrun++;
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);
  msm_write(port, UART_CR_CMD_RESET_ERR, UART_CR);
 }

 count = msm_read(port, UARTDM_RX_TOTAL_SNAP);

 port->icount.rx += count;

 dma->count = 0;

 dma_unmap_single(port->dev, dma->phys, UARTDM_RX_SIZE, dma->dir);

 for (i = 0; i < count; i++) {
  char flag = TTY_NORMAL;

  if (msm_port->break_detected && dma->virt[i] == 0) {
   port->icount.brk++;
   flag = TTY_BREAK;
   msm_port->break_detected = 0;
   if (uart_handle_break(port))
    continue;
  }

  if (!(port->read_status_mask & UART_SR_RX_BREAK))
   flag = TTY_NORMAL;

  spin_unlock_irqrestore(&port->lock, flags);
  sysrq = uart_handle_sysrq_char(port, dma->virt[i]);
  spin_lock_irqsave(&port->lock, flags);
  if (!sysrq)
   tty_insert_flip_char(tport, dma->virt[i], flag);
 }

 msm_start_rx_dma(msm_port);
done:
 spin_unlock_irqrestore(&port->lock, flags);

 if (count)
  tty_flip_buffer_push(tport);
}
