
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ mapbase; } ;
struct stm32_usart_offsets {scalar_t__ rdr; } ;
struct stm32_port {int * rx_ch; int rx_dma_buf; int rx_buf; struct uart_port port; TYPE_1__* info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dma_slave_config {int src_addr_width; scalar_t__ src_addr; } ;
struct dma_async_tx_descriptor {int * callback_param; int * callback; } ;
typedef int dma_cookie_t ;
typedef int config ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RX_BUF_L ;
 int RX_BUF_P ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_async_issue_pending (int *) ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int dma_release_channel (int *) ;
 int * dma_request_slave_channel (struct device*,char*) ;
 struct dma_async_tx_descriptor* dmaengine_prep_dma_cyclic (int *,int ,int ,int ,int ,int ) ;
 int dmaengine_slave_config (int *,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int memset (struct dma_slave_config*,int ,int) ;

__attribute__((used)) static int stm32_of_dma_rx_probe(struct stm32_port *stm32port,
     struct platform_device *pdev)
{
 struct stm32_usart_offsets *ofs = &stm32port->info->ofs;
 struct uart_port *port = &stm32port->port;
 struct device *dev = &pdev->dev;
 struct dma_slave_config config;
 struct dma_async_tx_descriptor *desc = ((void*)0);
 dma_cookie_t cookie;
 int ret;


 stm32port->rx_ch = dma_request_slave_channel(dev, "rx");
 if (!stm32port->rx_ch) {
  dev_info(dev, "rx dma alloc failed\n");
  return -ENODEV;
 }
 stm32port->rx_buf = dma_alloc_coherent(&pdev->dev, RX_BUF_L,
       &stm32port->rx_dma_buf,
       GFP_KERNEL);
 if (!stm32port->rx_buf) {
  ret = -ENOMEM;
  goto alloc_err;
 }


 memset(&config, 0, sizeof(config));
 config.src_addr = port->mapbase + ofs->rdr;
 config.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;

 ret = dmaengine_slave_config(stm32port->rx_ch, &config);
 if (ret < 0) {
  dev_err(dev, "rx dma channel config failed\n");
  ret = -ENODEV;
  goto config_err;
 }


 desc = dmaengine_prep_dma_cyclic(stm32port->rx_ch,
      stm32port->rx_dma_buf,
      RX_BUF_L, RX_BUF_P, DMA_DEV_TO_MEM,
      DMA_PREP_INTERRUPT);
 if (!desc) {
  dev_err(dev, "rx dma prep cyclic failed\n");
  ret = -ENODEV;
  goto config_err;
 }


 desc->callback = ((void*)0);
 desc->callback_param = ((void*)0);


 cookie = dmaengine_submit(desc);


 dma_async_issue_pending(stm32port->rx_ch);

 return 0;

config_err:
 dma_free_coherent(&pdev->dev,
     RX_BUF_L, stm32port->rx_buf,
     stm32port->rx_dma_buf);

alloc_err:
 dma_release_channel(stm32port->rx_ch);
 stm32port->rx_ch = ((void*)0);

 return ret;
}
