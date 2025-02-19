
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct device* dev; } ;
struct uart_8250_port {struct uart_8250_dma* dma; TYPE_2__ port; } ;
struct TYPE_8__ {int dst_maxburst; } ;
struct TYPE_7__ {int src_maxburst; } ;
struct uart_8250_dma {struct dw_dma_slave* tx_param; struct dw_dma_slave* rx_param; int fn; TYPE_4__ txconf; TYPE_3__ rxconf; } ;
struct dw_dma_slave {int dma_dev; } ;
struct TYPE_5__ {struct uart_8250_dma dma; } ;
struct lpss8250 {int dma_maxburst; struct dw_dma_slave dma_param; TYPE_1__ data; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dw_dma_slave* devm_kzalloc (struct device*,int,int ) ;
 int lpss8250_dma_filter ;

__attribute__((used)) static int lpss8250_dma_setup(struct lpss8250 *lpss, struct uart_8250_port *port)
{
 struct uart_8250_dma *dma = &lpss->data.dma;
 struct dw_dma_slave *rx_param, *tx_param;
 struct device *dev = port->port.dev;

 if (!lpss->dma_param.dma_dev)
  return 0;

 rx_param = devm_kzalloc(dev, sizeof(*rx_param), GFP_KERNEL);
 if (!rx_param)
  return -ENOMEM;

 tx_param = devm_kzalloc(dev, sizeof(*tx_param), GFP_KERNEL);
 if (!tx_param)
  return -ENOMEM;

 *rx_param = lpss->dma_param;
 dma->rxconf.src_maxburst = lpss->dma_maxburst;

 *tx_param = lpss->dma_param;
 dma->txconf.dst_maxburst = lpss->dma_maxburst;

 dma->fn = lpss8250_dma_filter;
 dma->rx_param = rx_param;
 dma->tx_param = tx_param;

 port->dma = dma;
 return 0;
}
