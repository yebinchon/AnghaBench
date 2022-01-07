
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;
typedef int const u16 ;
struct synquacer_spi {int tx_words; int bpw; int const* tx_buf; scalar_t__ regs; } ;


 int EINVAL ;
 int SYNQUACER_HSSPI_DMSTATUS_TX_DATA_MASK ;
 int SYNQUACER_HSSPI_DMSTATUS_TX_DATA_SHIFT ;
 scalar_t__ SYNQUACER_HSSPI_FIFO_DEPTH ;
 scalar_t__ SYNQUACER_HSSPI_REG_DMSTATUS ;
 scalar_t__ SYNQUACER_HSSPI_REG_TX_FIFO ;
 int iowrite16_rep (scalar_t__,int const*,int) ;
 int iowrite32_rep (scalar_t__,int const*,int) ;
 int iowrite8_rep (scalar_t__,int const*,int) ;
 int min (scalar_t__,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int write_fifo(struct synquacer_spi *sspi)
{
 u32 len = readl(sspi->regs + SYNQUACER_HSSPI_REG_DMSTATUS);

 len = (len >> SYNQUACER_HSSPI_DMSTATUS_TX_DATA_SHIFT) &
        SYNQUACER_HSSPI_DMSTATUS_TX_DATA_MASK;
 len = min(SYNQUACER_HSSPI_FIFO_DEPTH - len,
      sspi->tx_words);

 switch (sspi->bpw) {
 case 8: {
  const u8 *buf = sspi->tx_buf;

  iowrite8_rep(sspi->regs + SYNQUACER_HSSPI_REG_TX_FIFO,
        buf, len);
  sspi->tx_buf = buf + len;
  break;
 }
 case 16: {
  const u16 *buf = sspi->tx_buf;

  iowrite16_rep(sspi->regs + SYNQUACER_HSSPI_REG_TX_FIFO,
         buf, len);
  sspi->tx_buf = buf + len;
  break;
 }
 case 24:

 case 32: {
  const u32 *buf = sspi->tx_buf;

  iowrite32_rep(sspi->regs + SYNQUACER_HSSPI_REG_TX_FIFO,
         buf, len);
  sspi->tx_buf = buf + len;
  break;
 }
 default:
  return -EINVAL;
 }

 sspi->tx_words -= len;
 return 0;
}
