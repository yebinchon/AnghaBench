
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifx_spi_device {unsigned char* tx_buffer; int spi_more; int (* swap_buf ) (unsigned char*,int,unsigned char*) ;int tty_port; int fifo_lock; int tx_fifo; int spi_slave_cts; } ;


 int IFX_SPI_HEADER_OVERHEAD ;
 int IFX_SPI_PAYLOAD_SIZE ;
 size_t IFX_SPI_TRANSFER_SIZE ;
 int ifx_spi_setup_spi_header (unsigned char*,int,int) ;
 int kfifo_len (int *) ;
 int kfifo_out_locked (int *,unsigned char*,int,int *) ;
 int min (int,int ) ;
 int stub1 (unsigned char*,int,unsigned char*) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static int ifx_spi_prepare_tx_buffer(struct ifx_spi_device *ifx_dev)
{
 int temp_count;
 int queue_length;
 int tx_count;
 unsigned char *tx_buffer;

 tx_buffer = ifx_dev->tx_buffer;


 tx_buffer += IFX_SPI_HEADER_OVERHEAD;
 tx_count = IFX_SPI_HEADER_OVERHEAD;



 ifx_dev->spi_more = 0;


 if (!ifx_dev->spi_slave_cts) {

  queue_length = kfifo_len(&ifx_dev->tx_fifo);
  if (queue_length != 0) {

   temp_count = min(queue_length, IFX_SPI_PAYLOAD_SIZE);
   temp_count = kfifo_out_locked(&ifx_dev->tx_fifo,
     tx_buffer, temp_count,
     &ifx_dev->fifo_lock);


   tx_buffer += temp_count;
   tx_count += temp_count;
   if (temp_count == queue_length)

    tty_port_tty_wakeup(&ifx_dev->tty_port);
   else
    ifx_dev->spi_more = 1;
  }
 }


 ifx_spi_setup_spi_header(ifx_dev->tx_buffer,
     tx_count-IFX_SPI_HEADER_OVERHEAD,
     ifx_dev->spi_more);

 ifx_dev->swap_buf((ifx_dev->tx_buffer), tx_count,
  &ifx_dev->tx_buffer[IFX_SPI_TRANSFER_SIZE]);
 return tx_count;
}
