
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sifive_spi {int done; } ;


 int SIFIVE_SPI_REG_IE ;
 int SIFIVE_SPI_REG_IP ;
 int reinit_completion (int *) ;
 int sifive_spi_read (struct sifive_spi*,int ) ;
 int sifive_spi_write (struct sifive_spi*,int ,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void sifive_spi_wait(struct sifive_spi *spi, u32 bit, int poll)
{
 if (poll) {
  u32 cr;

  do {
   cr = sifive_spi_read(spi, SIFIVE_SPI_REG_IP);
  } while (!(cr & bit));
 } else {
  reinit_completion(&spi->done);
  sifive_spi_write(spi, SIFIVE_SPI_REG_IE, bit);
  wait_for_completion(&spi->done);
 }
}
