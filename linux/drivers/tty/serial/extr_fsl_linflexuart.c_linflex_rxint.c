
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx; } ;
struct uart_port {int lock; scalar_t__ membase; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;


 scalar_t__ BDRM ;
 int IRQ_HANDLED ;
 unsigned long LINFLEXD_UARTSR_BOF ;
 unsigned long LINFLEXD_UARTSR_DRFRFE ;
 unsigned long LINFLEXD_UARTSR_FEF ;
 unsigned long LINFLEXD_UARTSR_PE ;
 unsigned long LINFLEXD_UARTSR_RMB ;
 unsigned long LINFLEXD_UARTSR_SZF ;
 unsigned int TTY_NORMAL ;
 scalar_t__ UARTSR ;
 unsigned char readb (scalar_t__) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned char,unsigned int) ;
 int uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned char) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t linflex_rxint(int irq, void *dev_id)
{
 struct uart_port *sport = dev_id;
 unsigned int flg;
 struct tty_port *port = &sport->state->port;
 unsigned long flags, status;
 unsigned char rx;
 bool brk;

 spin_lock_irqsave(&sport->lock, flags);

 status = readl(sport->membase + UARTSR);
 while (status & LINFLEXD_UARTSR_RMB) {
  rx = readb(sport->membase + BDRM);
  brk = 0;
  flg = TTY_NORMAL;
  sport->icount.rx++;

  if (status & (LINFLEXD_UARTSR_BOF | LINFLEXD_UARTSR_SZF |
         LINFLEXD_UARTSR_FEF | LINFLEXD_UARTSR_PE)) {
   if (status & LINFLEXD_UARTSR_SZF)
    status |= LINFLEXD_UARTSR_SZF;
   if (status & LINFLEXD_UARTSR_BOF)
    status |= LINFLEXD_UARTSR_BOF;
   if (status & LINFLEXD_UARTSR_FEF) {
    if (!rx)
     brk = 1;
    status |= LINFLEXD_UARTSR_FEF;
   }
   if (status & LINFLEXD_UARTSR_PE)
    status |= LINFLEXD_UARTSR_PE;
  }

  writel(status | LINFLEXD_UARTSR_RMB | LINFLEXD_UARTSR_DRFRFE,
         sport->membase + UARTSR);
  status = readl(sport->membase + UARTSR);

  if (brk) {
   uart_handle_break(sport);
  } else {




   tty_insert_flip_char(port, rx, flg);
  }
 }

 spin_unlock_irqrestore(&sport->lock, flags);

 tty_flip_buffer_push(port);

 return IRQ_HANDLED;
}
