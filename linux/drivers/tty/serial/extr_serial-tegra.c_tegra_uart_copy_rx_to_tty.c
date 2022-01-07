
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_3__ {unsigned int rx; } ;
struct TYPE_4__ {int ignore_status_mask; int dev; TYPE_1__ icount; } ;
struct tegra_uart_port {int rx_dma_buf_phys; TYPE_2__ uport; scalar_t__ rx_dma_buf_virt; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int TEGRA_UART_RX_DMA_BUFFER_SIZE ;
 int UART_LSR_DR ;
 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int tty_insert_flip_string (struct tty_port*,unsigned char*,unsigned int) ;

__attribute__((used)) static void tegra_uart_copy_rx_to_tty(struct tegra_uart_port *tup,
          struct tty_port *tty,
          unsigned int count)
{
 int copied;


 if (!count)
  return;

 tup->uport.icount.rx += count;
 if (!tty) {
  dev_err(tup->uport.dev, "No tty port\n");
  return;
 }

 if (tup->uport.ignore_status_mask & UART_LSR_DR)
  return;

 dma_sync_single_for_cpu(tup->uport.dev, tup->rx_dma_buf_phys,
    TEGRA_UART_RX_DMA_BUFFER_SIZE, DMA_FROM_DEVICE);
 copied = tty_insert_flip_string(tty,
   ((unsigned char *)(tup->rx_dma_buf_virt)), count);
 if (copied != count) {
  WARN_ON(1);
  dev_err(tup->uport.dev, "RxData copy to tty layer failed\n");
 }
 dma_sync_single_for_device(tup->uport.dev, tup->rx_dma_buf_phys,
    TEGRA_UART_RX_DMA_BUFFER_SIZE, DMA_TO_DEVICE);
}
