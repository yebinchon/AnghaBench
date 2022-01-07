
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;
struct stm32_usart_offsets {scalar_t__ isr; } ;
struct stm32_port {TYPE_2__* rx_ch; TYPE_1__* info; } ;
struct dma_tx_state {int residue; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_4__ {int cookie; } ;
struct TYPE_3__ {struct stm32_usart_offsets ofs; } ;


 int DMA_IN_PROGRESS ;
 int USART_SR_RXNE ;
 int dmaengine_tx_status (TYPE_2__*,int ,struct dma_tx_state*) ;
 int readl_relaxed (scalar_t__) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static int stm32_pending_rx(struct uart_port *port, u32 *sr, int *last_res,
       bool threaded)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 enum dma_status status;
 struct dma_tx_state state;

 *sr = readl_relaxed(port->membase + ofs->isr);

 if (threaded && stm32_port->rx_ch) {
  status = dmaengine_tx_status(stm32_port->rx_ch,
          stm32_port->rx_ch->cookie,
          &state);
  if ((status == DMA_IN_PROGRESS) &&
      (*last_res != state.residue))
   return 1;
  else
   return 0;
 } else if (*sr & USART_SR_RXNE) {
  return 1;
 }
 return 0;
}
