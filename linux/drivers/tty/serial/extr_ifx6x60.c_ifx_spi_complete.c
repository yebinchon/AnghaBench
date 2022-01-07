
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int srdy; } ;
struct TYPE_5__ {int status; int actual_length; } ;
struct ifx_spi_device {unsigned char spi_slave_cts; int tty_port; scalar_t__ spi_more; int io_work_tasklet; int flags; TYPE_3__ gpio; int tx_fifo; scalar_t__ write_pending; TYPE_2__ spi_msg; TYPE_1__* spi_dev; int * rx_buffer; int (* swap_buf ) (int *,int,int *) ;} ;
struct TYPE_4__ {int dev; } ;


 int IFX_SPI_HEADER_0 ;
 int IFX_SPI_HEADER_F ;
 size_t IFX_SPI_HEADER_OVERHEAD ;
 int IFX_SPI_POWER_DATA_PENDING ;
 int IFX_SPI_POWER_SRDY ;
 int IFX_SPI_STATE_IO_IN_PROGRESS ;
 int IFX_SPI_STATE_IO_READY ;
 size_t IFX_SPI_TRANSFER_SIZE ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*,...) ;
 int gpio_get_value (int ) ;
 int ifx_spi_decode_spi_header (int *,int*,unsigned char*,unsigned char*) ;
 int ifx_spi_insert_flip_string (struct ifx_spi_device*,int *,size_t) ;
 int ifx_spi_power_state_clear (struct ifx_spi_device*,int ) ;
 int kfifo_len (int *) ;
 int min (unsigned int,int ) ;
 int mrdy_assert (struct ifx_spi_device*) ;
 int mrdy_set_low (struct ifx_spi_device*) ;
 int stub1 (int *,size_t,int *) ;
 int stub2 (int *,int,int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static void ifx_spi_complete(void *ctx)
{
 struct ifx_spi_device *ifx_dev = ctx;
 int length;
 int actual_length;
 unsigned char more = 0;
 unsigned char cts;
 int local_write_pending = 0;
 int queue_length;
 int srdy;
 int decode_result;

 mrdy_set_low(ifx_dev);

 if (!ifx_dev->spi_msg.status) {

  ifx_dev->swap_buf(ifx_dev->rx_buffer, IFX_SPI_HEADER_OVERHEAD,
   &ifx_dev->rx_buffer[IFX_SPI_HEADER_OVERHEAD]);
  decode_result = ifx_spi_decode_spi_header(ifx_dev->rx_buffer,
    &length, &more, &cts);
  if (decode_result == IFX_SPI_HEADER_0) {
   dev_dbg(&ifx_dev->spi_dev->dev,
    "ignore input: invalid header 0");
   ifx_dev->spi_slave_cts = 0;
   goto complete_exit;
  } else if (decode_result == IFX_SPI_HEADER_F) {
   dev_dbg(&ifx_dev->spi_dev->dev,
    "ignore input: invalid header F");
   goto complete_exit;
  }

  ifx_dev->spi_slave_cts = cts;

  actual_length = min((unsigned int)length,
     ifx_dev->spi_msg.actual_length);
  ifx_dev->swap_buf(
   (ifx_dev->rx_buffer + IFX_SPI_HEADER_OVERHEAD),
    actual_length,
    &ifx_dev->rx_buffer[IFX_SPI_TRANSFER_SIZE]);
  ifx_spi_insert_flip_string(
   ifx_dev,
   ifx_dev->rx_buffer + IFX_SPI_HEADER_OVERHEAD,
   (size_t)actual_length);
 } else {
  more = 0;
  dev_dbg(&ifx_dev->spi_dev->dev, "SPI transfer error %d",
         ifx_dev->spi_msg.status);
 }

complete_exit:
 if (ifx_dev->write_pending) {
  ifx_dev->write_pending = 0;
  local_write_pending = 1;
 }

 clear_bit(IFX_SPI_STATE_IO_IN_PROGRESS, &(ifx_dev->flags));

 queue_length = kfifo_len(&ifx_dev->tx_fifo);
 srdy = gpio_get_value(ifx_dev->gpio.srdy);
 if (!srdy)
  ifx_spi_power_state_clear(ifx_dev, IFX_SPI_POWER_SRDY);


 if (test_and_clear_bit(IFX_SPI_STATE_IO_READY, &ifx_dev->flags))
  tasklet_schedule(&ifx_dev->io_work_tasklet);
 else {
  if (more || ifx_dev->spi_more || queue_length > 0 ||
   local_write_pending) {
   if (ifx_dev->spi_slave_cts) {
    if (more)
     mrdy_assert(ifx_dev);
   } else
    mrdy_assert(ifx_dev);
  } else {





   ifx_spi_power_state_clear(ifx_dev,
        IFX_SPI_POWER_DATA_PENDING);
   tty_port_tty_wakeup(&ifx_dev->tty_port);
  }
 }
}
