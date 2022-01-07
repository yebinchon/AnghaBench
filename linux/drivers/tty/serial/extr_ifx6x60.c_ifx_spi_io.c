
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int is_dma_mapped; int complete; struct ifx_spi_device* context; int queue; } ;
struct TYPE_9__ {void* rx_dma; void* tx_dma; int rx_buf; int tx_buf; int bits_per_word; int speed_hz; scalar_t__ cs_change; int len; } ;
struct TYPE_7__ {scalar_t__ unack_srdy_int_nb; } ;
struct ifx_spi_device {int write_pending; int io_work_tasklet; int flags; TYPE_2__ spi_msg; TYPE_5__* spi_dev; TYPE_3__ spi_xfer; void* rx_dma; void* tx_dma; void* rx_bus; void* tx_bus; scalar_t__ use_dma; int rx_buffer; int tx_buffer; TYPE_1__ gpio; } ;
typedef void* dma_addr_t ;
struct TYPE_10__ {int bits_per_word; int max_speed_hz; } ;


 int IFX_SPI_STATE_IO_AVAILABLE ;
 int IFX_SPI_STATE_IO_IN_PROGRESS ;
 int IFX_SPI_TRANSFER_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int clear_bit (int ,int *) ;
 int ifx_spi_complete ;
 int ifx_spi_prepare_tx_buffer (struct ifx_spi_device*) ;
 int mrdy_assert (struct ifx_spi_device*) ;
 int spi_async (TYPE_5__*,TYPE_2__*) ;
 int spi_message_add_tail (TYPE_3__*,TYPE_2__*) ;
 int spi_message_init (TYPE_2__*) ;
 int tasklet_schedule (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ifx_spi_io(unsigned long data)
{
 int retval;
 struct ifx_spi_device *ifx_dev = (struct ifx_spi_device *) data;

 if (!test_and_set_bit(IFX_SPI_STATE_IO_IN_PROGRESS, &ifx_dev->flags) &&
  test_bit(IFX_SPI_STATE_IO_AVAILABLE, &ifx_dev->flags)) {
  if (ifx_dev->gpio.unack_srdy_int_nb > 0)
   ifx_dev->gpio.unack_srdy_int_nb--;

  ifx_spi_prepare_tx_buffer(ifx_dev);

  spi_message_init(&ifx_dev->spi_msg);
  INIT_LIST_HEAD(&ifx_dev->spi_msg.queue);

  ifx_dev->spi_msg.context = ifx_dev;
  ifx_dev->spi_msg.complete = ifx_spi_complete;



  ifx_dev->spi_xfer.len = IFX_SPI_TRANSFER_SIZE;
  ifx_dev->spi_xfer.cs_change = 0;
  ifx_dev->spi_xfer.speed_hz = ifx_dev->spi_dev->max_speed_hz;

  ifx_dev->spi_xfer.bits_per_word =
   ifx_dev->spi_dev->bits_per_word;

  ifx_dev->spi_xfer.tx_buf = ifx_dev->tx_buffer;
  ifx_dev->spi_xfer.rx_buf = ifx_dev->rx_buffer;




  if (ifx_dev->use_dma) {
   ifx_dev->spi_msg.is_dma_mapped = 1;
   ifx_dev->tx_dma = ifx_dev->tx_bus;
   ifx_dev->rx_dma = ifx_dev->rx_bus;
   ifx_dev->spi_xfer.tx_dma = ifx_dev->tx_dma;
   ifx_dev->spi_xfer.rx_dma = ifx_dev->rx_dma;
  } else {
   ifx_dev->spi_msg.is_dma_mapped = 0;
   ifx_dev->tx_dma = (dma_addr_t)0;
   ifx_dev->rx_dma = (dma_addr_t)0;
   ifx_dev->spi_xfer.tx_dma = (dma_addr_t)0;
   ifx_dev->spi_xfer.rx_dma = (dma_addr_t)0;
  }

  spi_message_add_tail(&ifx_dev->spi_xfer, &ifx_dev->spi_msg);




  mrdy_assert(ifx_dev);

  retval = spi_async(ifx_dev->spi_dev, &ifx_dev->spi_msg);
  if (retval) {
   clear_bit(IFX_SPI_STATE_IO_IN_PROGRESS,
      &ifx_dev->flags);
   tasklet_schedule(&ifx_dev->io_work_tasklet);
   return;
  }
 } else
  ifx_dev->write_pending = 1;
}
