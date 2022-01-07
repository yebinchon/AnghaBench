
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ti_qspi {unsigned int cmd; scalar_t__ base; int dev; int dc; } ;
struct spi_transfer {int rx_nbits; int bits_per_word; int * rx_buf; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 unsigned int QSPI_RD_DUAL ;
 unsigned int QSPI_RD_QUAD ;
 unsigned int QSPI_RD_SNGL ;
 int QSPI_SPI_CMD_REG ;
 scalar_t__ QSPI_SPI_DATA_REG ;


 int dev_dbg (int ,char*,unsigned int,int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ qspi_is_busy (struct ti_qspi*) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int readw (scalar_t__) ;
 scalar_t__ ti_qspi_poll_wc (struct ti_qspi*) ;
 int ti_qspi_write (struct ti_qspi*,unsigned int,int ) ;

__attribute__((used)) static int qspi_read_msg(struct ti_qspi *qspi, struct spi_transfer *t,
    int count)
{
 int wlen;
 unsigned int cmd;
 u8 *rxbuf;

 rxbuf = t->rx_buf;
 cmd = qspi->cmd;
 switch (t->rx_nbits) {
 case 129:
  cmd |= QSPI_RD_DUAL;
  break;
 case 128:
  cmd |= QSPI_RD_QUAD;
  break;
 default:
  cmd |= QSPI_RD_SNGL;
  break;
 }
 wlen = t->bits_per_word >> 3;

 while (count) {
  dev_dbg(qspi->dev, "rx cmd %08x dc %08x\n", cmd, qspi->dc);
  if (qspi_is_busy(qspi))
   return -EBUSY;

  ti_qspi_write(qspi, cmd, QSPI_SPI_CMD_REG);
  if (ti_qspi_poll_wc(qspi)) {
   dev_err(qspi->dev, "read timed out\n");
   return -ETIMEDOUT;
  }
  switch (wlen) {
  case 1:
   *rxbuf = readb(qspi->base + QSPI_SPI_DATA_REG);
   break;
  case 2:
   *((u16 *)rxbuf) = readw(qspi->base + QSPI_SPI_DATA_REG);
   break;
  case 4:
   *((u32 *)rxbuf) = readl(qspi->base + QSPI_SPI_DATA_REG);
   break;
  }
  rxbuf += wlen;
  count -= wlen;
 }

 return 0;
}
