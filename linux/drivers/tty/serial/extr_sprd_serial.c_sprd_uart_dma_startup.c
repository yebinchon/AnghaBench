
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct TYPE_4__ {int enable; int chn; } ;
struct TYPE_3__ {scalar_t__ enable; } ;
struct sprd_uart_port {TYPE_2__ rx_dma; TYPE_1__ tx_dma; } ;


 int dev_warn (int ,char*) ;
 int dma_release_channel (int ) ;
 int sprd_request_dma (struct uart_port*) ;
 int sprd_start_dma_rx (struct uart_port*) ;
 int sprd_uart_dma_enable (struct uart_port*,int) ;

__attribute__((used)) static void sprd_uart_dma_startup(struct uart_port *port,
      struct sprd_uart_port *sp)
{
 int ret;

 sprd_request_dma(port);
 if (!(sp->rx_dma.enable || sp->tx_dma.enable))
  return;

 ret = sprd_start_dma_rx(port);
 if (ret) {
  sp->rx_dma.enable = 0;
  dma_release_channel(sp->rx_dma.chn);
  dev_warn(port->dev, "fail to start RX dma mode\n");
 }

 sprd_uart_dma_enable(port, 1);
}
