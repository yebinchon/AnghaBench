
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; int dev; } ;
struct eg20t_port {int desc_rx; int trigger_level; int sg_rx; struct uart_port port; } ;
struct TYPE_2__ {int port; } ;


 int DMA_FROM_DEVICE ;
 int PCH_UART_HAL_RX_ERR_INT ;
 int PCH_UART_HAL_RX_INT ;
 int async_tx_ack (int ) ;
 int dma_push_rx (struct eg20t_port*,int ) ;
 int dma_sync_sg_for_cpu (int ,int *,int,int ) ;
 int pch_uart_hal_enable_interrupt (struct eg20t_port*,int) ;
 int tty_flip_buffer_push (int *) ;

__attribute__((used)) static void pch_dma_rx_complete(void *arg)
{
 struct eg20t_port *priv = arg;
 struct uart_port *port = &priv->port;
 int count;

 dma_sync_sg_for_cpu(port->dev, &priv->sg_rx, 1, DMA_FROM_DEVICE);
 count = dma_push_rx(priv, priv->trigger_level);
 if (count)
  tty_flip_buffer_push(&port->state->port);
 async_tx_ack(priv->desc_rx);
 pch_uart_hal_enable_interrupt(priv, PCH_UART_HAL_RX_INT |
         PCH_UART_HAL_RX_ERR_INT);
}
