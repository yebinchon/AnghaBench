
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* state; } ;
struct tegra_uart_port {scalar_t__ use_tx_pio; int current_baud; TYPE_2__ uport; } ;
struct circ_buf {size_t tail; int head; int * buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 unsigned long BYTES_TO_ALIGN (unsigned long) ;
 unsigned long CIRC_CNT_TO_END (int ,size_t,int ) ;
 unsigned long TEGRA_UART_MIN_DMA ;
 int UART_XMIT_SIZE ;
 int tegra_uart_start_pio_tx (struct tegra_uart_port*,unsigned long) ;
 int tegra_uart_start_tx_dma (struct tegra_uart_port*,unsigned long) ;

__attribute__((used)) static void tegra_uart_start_next_tx(struct tegra_uart_port *tup)
{
 unsigned long tail;
 unsigned long count;
 struct circ_buf *xmit = &tup->uport.state->xmit;

 if (!tup->current_baud)
  return;

 tail = (unsigned long)&xmit->buf[xmit->tail];
 count = CIRC_CNT_TO_END(xmit->head, xmit->tail, UART_XMIT_SIZE);
 if (!count)
  return;

 if (tup->use_tx_pio || count < TEGRA_UART_MIN_DMA)
  tegra_uart_start_pio_tx(tup, count);
 else if (BYTES_TO_ALIGN(tail) > 0)
  tegra_uart_start_pio_tx(tup, BYTES_TO_ALIGN(tail));
 else
  tegra_uart_start_tx_dma(tup, count);
}
