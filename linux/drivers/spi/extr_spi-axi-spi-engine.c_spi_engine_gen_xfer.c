
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {unsigned int len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_engine_program {int dummy; } ;


 int SPI_ENGINE_CMD_TRANSFER (unsigned int,unsigned int) ;
 unsigned int SPI_ENGINE_TRANSFER_READ ;
 unsigned int SPI_ENGINE_TRANSFER_WRITE ;
 unsigned int min (unsigned int,unsigned int) ;
 int spi_engine_program_add_cmd (struct spi_engine_program*,int,int ) ;

__attribute__((used)) static void spi_engine_gen_xfer(struct spi_engine_program *p, bool dry,
 struct spi_transfer *xfer)
{
 unsigned int len = xfer->len;

 while (len) {
  unsigned int n = min(len, 256U);
  unsigned int flags = 0;

  if (xfer->tx_buf)
   flags |= SPI_ENGINE_TRANSFER_WRITE;
  if (xfer->rx_buf)
   flags |= SPI_ENGINE_TRANSFER_READ;

  spi_engine_program_add_cmd(p, dry,
   SPI_ENGINE_CMD_TRANSFER(flags, n - 1));
  len -= n;
 }
}
