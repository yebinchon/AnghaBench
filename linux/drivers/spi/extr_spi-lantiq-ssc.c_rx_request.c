
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lantiq_ssc_spi {unsigned int rx_todo; int rx_fifo_size; } ;


 int LTQ_SPI_RXREQ ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi*,unsigned int,int ) ;

__attribute__((used)) static void rx_request(struct lantiq_ssc_spi *spi)
{
 unsigned int rxreq, rxreq_max;






 rxreq = spi->rx_todo;
 rxreq_max = spi->rx_fifo_size * 4;
 if (rxreq > rxreq_max)
  rxreq = rxreq_max;

 lantiq_ssc_writel(spi, rxreq, LTQ_SPI_RXREQ);
}
