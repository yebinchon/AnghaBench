
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct TYPE_6__ {TYPE_1__* state; } ;
struct jsm_channel {int ch_flags; scalar_t__ ch_t_tlevel; TYPE_3__ uart_port; int ch_txcount; TYPE_2__* ch_cls_uart; } ;
struct circ_buf {int tail; int * buf; } ;
struct TYPE_5__ {int txrx; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int CH_BREAK_SENDING ;
 int CH_STOP ;
 int CH_TX_FIFO_EMPTY ;
 int CH_TX_FIFO_LWM ;
 int UART_XMIT_SIZE ;
 int min (int,int) ;
 int uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 int uart_write_wakeup (TYPE_3__*) ;
 int writeb (int ,int *) ;

__attribute__((used)) static void cls_copy_data_from_queue_to_uart(struct jsm_channel *ch)
{
 u16 tail;
 int n;
 int qlen;
 u32 len_written = 0;
 struct circ_buf *circ;

 if (!ch)
  return;

 circ = &ch->uart_port.state->xmit;


 if (uart_circ_empty(circ))
  return;


 if ((ch->ch_flags & CH_STOP) || (ch->ch_flags & CH_BREAK_SENDING))
  return;


 if (!(ch->ch_flags & (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM)))
  return;

 n = 32;


 tail = circ->tail & (UART_XMIT_SIZE - 1);
 qlen = uart_circ_chars_pending(circ);


 n = min(n, qlen);

 while (n > 0) {
  writeb(circ->buf[tail], &ch->ch_cls_uart->txrx);
  tail = (tail + 1) & (UART_XMIT_SIZE - 1);
  n--;
  ch->ch_txcount++;
  len_written++;
 }


 circ->tail = tail & (UART_XMIT_SIZE - 1);

 if (len_written > ch->ch_t_tlevel)
  ch->ch_flags &= ~(CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);

 if (uart_circ_empty(circ))
  uart_write_wakeup(&ch->uart_port);
}
