
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ mapbase; } ;
struct stm32_usart_offsets {scalar_t__ tdr; } ;
struct stm32_port {int tx_dma_busy; int * tx_ch; int tx_dma_buf; int tx_buf; struct uart_port port; TYPE_1__* info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dma_slave_config {int dst_addr_width; scalar_t__ dst_addr; } ;
typedef int config ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TX_BUF_L ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int dma_release_channel (int *) ;
 int * dma_request_slave_channel (struct device*,char*) ;
 int dmaengine_slave_config (int *,struct dma_slave_config*) ;
 int memset (struct dma_slave_config*,int ,int) ;

__attribute__((used)) static int stm32_of_dma_tx_probe(struct stm32_port *stm32port,
     struct platform_device *pdev)
{
 struct stm32_usart_offsets *ofs = &stm32port->info->ofs;
 struct uart_port *port = &stm32port->port;
 struct device *dev = &pdev->dev;
 struct dma_slave_config config;
 int ret;

 stm32port->tx_dma_busy = 0;


 stm32port->tx_ch = dma_request_slave_channel(dev, "tx");
 if (!stm32port->tx_ch) {
  dev_info(dev, "tx dma alloc failed\n");
  return -ENODEV;
 }
 stm32port->tx_buf = dma_alloc_coherent(&pdev->dev, TX_BUF_L,
       &stm32port->tx_dma_buf,
       GFP_KERNEL);
 if (!stm32port->tx_buf) {
  ret = -ENOMEM;
  goto alloc_err;
 }


 memset(&config, 0, sizeof(config));
 config.dst_addr = port->mapbase + ofs->tdr;
 config.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;

 ret = dmaengine_slave_config(stm32port->tx_ch, &config);
 if (ret < 0) {
  dev_err(dev, "tx dma channel config failed\n");
  ret = -ENODEV;
  goto config_err;
 }

 return 0;

config_err:
 dma_free_coherent(&pdev->dev,
     TX_BUF_L, stm32port->tx_buf,
     stm32port->tx_dma_buf);

alloc_err:
 dma_release_channel(stm32port->tx_ch);
 stm32port->tx_ch = ((void*)0);

 return ret;
}
