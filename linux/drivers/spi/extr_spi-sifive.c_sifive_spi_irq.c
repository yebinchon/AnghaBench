
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sifive_spi {int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SIFIVE_SPI_IP_RXWM ;
 int SIFIVE_SPI_IP_TXWM ;
 int SIFIVE_SPI_REG_IE ;
 int SIFIVE_SPI_REG_IP ;
 int complete (int *) ;
 int sifive_spi_read (struct sifive_spi*,int ) ;
 int sifive_spi_write (struct sifive_spi*,int ,int ) ;

__attribute__((used)) static irqreturn_t sifive_spi_irq(int irq, void *dev_id)
{
 struct sifive_spi *spi = dev_id;
 u32 ip = sifive_spi_read(spi, SIFIVE_SPI_REG_IP);

 if (ip & (SIFIVE_SPI_IP_TXWM | SIFIVE_SPI_IP_RXWM)) {

  sifive_spi_write(spi, SIFIVE_SPI_REG_IE, 0);
  complete(&spi->done);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
