
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int rx_buf; int tx_buf; } ;
struct spi_device {int mode; } ;


 int SPI_3WIRE ;
 unsigned int SPI_3WIRE_RX ;
 unsigned int SPI_3WIRE_TX ;
 unsigned int SPI_FULL_DUPLEX ;
 unsigned int SPI_SIMPLEX_RX ;
 unsigned int SPI_SIMPLEX_TX ;

__attribute__((used)) static unsigned int stm32_spi_communication_type(struct spi_device *spi_dev,
       struct spi_transfer *transfer)
{
 unsigned int type = SPI_FULL_DUPLEX;

 if (spi_dev->mode & SPI_3WIRE) {






  if (!transfer->tx_buf)
   type = SPI_3WIRE_RX;
  else
   type = SPI_3WIRE_TX;
 } else {
  if (!transfer->tx_buf)
   type = SPI_SIMPLEX_RX;
  else if (!transfer->rx_buf)
   type = SPI_SIMPLEX_TX;
 }

 return type;
}
