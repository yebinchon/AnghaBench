
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int tx; } ;
struct uart_port {TYPE_3__ icount; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct men_z135_port {TYPE_2__* mdev; struct uart_port port; } ;
struct circ_buf {int head; int tail; int * buf; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int BYTES_TO_ALIGN (int) ;
 int MEN_Z135_CONF_REG ;
 int MEN_Z135_FIFO_WATERMARK ;
 int MEN_Z135_IER_TXCIEN ;
 scalar_t__ MEN_Z135_TX_CTRL ;
 scalar_t__ MEN_Z135_TX_RAM ;
 int UART_XMIT_SIZE ;
 int WAKEUP_CHARS ;
 scalar_t__ align ;
 int dev_err (int *,char*,int,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int memcpy_toio (scalar_t__,int *,int) ;
 int men_z135_reg_clr (struct men_z135_port*,int ,int ) ;
 int men_z135_reg_set (struct men_z135_port*,int ,int ) ;
 int min (int,int) ;
 int uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void men_z135_handle_tx(struct men_z135_port *uart)
{
 struct uart_port *port = &uart->port;
 struct circ_buf *xmit = &port->state->xmit;
 u32 txc;
 u32 wptr;
 int qlen;
 int n;
 int txfree;
 int head;
 int tail;
 int s;

 if (uart_circ_empty(xmit))
  goto out;

 if (uart_tx_stopped(port))
  goto out;

 if (port->x_char)
  goto out;


 qlen = uart_circ_chars_pending(xmit);
 if (qlen <= 0)
  goto out;

 wptr = ioread32(port->membase + MEN_Z135_TX_CTRL);
 txc = (wptr >> 16) & 0x3ff;
 wptr &= 0x3ff;

 if (txc > MEN_Z135_FIFO_WATERMARK)
  txc = MEN_Z135_FIFO_WATERMARK;

 txfree = MEN_Z135_FIFO_WATERMARK - txc;
 if (txfree <= 0) {
  dev_err(&uart->mdev->dev,
   "Not enough room in TX FIFO have %d, need %d\n",
   txfree, qlen);
  goto irq_en;
 }




 if (align && qlen >= 3 && BYTES_TO_ALIGN(wptr))
  n = 4 - BYTES_TO_ALIGN(wptr);
 else if (qlen > txfree)
  n = txfree;
 else
  n = qlen;

 if (n <= 0)
  goto irq_en;

 head = xmit->head & (UART_XMIT_SIZE - 1);
 tail = xmit->tail & (UART_XMIT_SIZE - 1);

 s = ((head >= tail) ? head : UART_XMIT_SIZE) - tail;
 n = min(n, s);

 memcpy_toio(port->membase + MEN_Z135_TX_RAM, &xmit->buf[xmit->tail], n);
 xmit->tail = (xmit->tail + n) & (UART_XMIT_SIZE - 1);

 iowrite32(n & 0x3ff, port->membase + MEN_Z135_TX_CTRL);

 port->icount.tx += n;

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

irq_en:
 if (!uart_circ_empty(xmit))
  men_z135_reg_set(uart, MEN_Z135_CONF_REG, MEN_Z135_IER_TXCIEN);
 else
  men_z135_reg_clr(uart, MEN_Z135_CONF_REG, MEN_Z135_IER_TXCIEN);

out:
 return;

}
