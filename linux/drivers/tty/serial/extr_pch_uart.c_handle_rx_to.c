
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_uart_buffer {int size; int buf; } ;
struct eg20t_port {struct pch_uart_buffer rxbuf; int start_rx; } ;


 int PCH_UART_HAL_RX_ERR_INT ;
 int PCH_UART_HAL_RX_INT ;
 int PCH_UART_HANDLED_RX_INT ;
 int pch_uart_hal_disable_interrupt (struct eg20t_port*,int) ;
 int pch_uart_hal_read (struct eg20t_port*,int ,int) ;
 int push_rx (struct eg20t_port*,int ,int) ;

__attribute__((used)) static int handle_rx_to(struct eg20t_port *priv)
{
 struct pch_uart_buffer *buf;
 int rx_size;
 int ret;
 if (!priv->start_rx) {
  pch_uart_hal_disable_interrupt(priv, PCH_UART_HAL_RX_INT |
           PCH_UART_HAL_RX_ERR_INT);
  return 0;
 }
 buf = &priv->rxbuf;
 do {
  rx_size = pch_uart_hal_read(priv, buf->buf, buf->size);
  ret = push_rx(priv, buf->buf, rx_size);
  if (ret)
   return 0;
 } while (rx_size == buf->size);

 return PCH_UART_HANDLED_RX_INT;
}
