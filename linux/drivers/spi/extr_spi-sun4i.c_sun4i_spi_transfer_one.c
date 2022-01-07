
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_spi {unsigned int len; int done; scalar_t__ tx_buf; int mclk; scalar_t__ rx_buf; } ;
struct spi_transfer {unsigned int len; int speed_hz; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_master {int dev; } ;
struct spi_device {int mode; int dev; } ;


 int EMSGSIZE ;
 int ETIMEDOUT ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LSB_FIRST ;
 int SUN4I_BURST_CNT (unsigned int) ;
 int SUN4I_BURST_CNT_REG ;
 int SUN4I_CLK_CTL_CDR1 (unsigned int) ;
 int SUN4I_CLK_CTL_CDR2 (unsigned int) ;
 int SUN4I_CLK_CTL_CDR2_MASK ;
 int SUN4I_CLK_CTL_DRS ;
 int SUN4I_CLK_CTL_REG ;
 int SUN4I_CTL_CPHA ;
 int SUN4I_CTL_CPOL ;
 int SUN4I_CTL_DHB ;
 int SUN4I_CTL_LMTF ;
 int SUN4I_CTL_REG ;
 int SUN4I_CTL_RF_RST ;
 int SUN4I_CTL_TF_RST ;
 int SUN4I_CTL_XCH ;
 int SUN4I_FIFO_DEPTH ;
 int SUN4I_INT_CTL_REG ;
 int SUN4I_INT_CTL_RF_F34 ;
 int SUN4I_INT_CTL_TC ;
 int SUN4I_INT_CTL_TF_E34 ;
 int SUN4I_INT_STA_REG ;
 unsigned int SUN4I_MAX_XFER_SIZE ;
 int SUN4I_XMIT_CNT (unsigned int) ;
 int SUN4I_XMIT_CNT_REG ;
 unsigned int clk_get_rate (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,int ,int,int,int ,unsigned int) ;
 unsigned int ilog2 (unsigned int) ;
 unsigned int jiffies ;
 int jiffies_to_msecs (unsigned int) ;
 unsigned int max (int,unsigned int) ;
 int msecs_to_jiffies (unsigned int) ;
 int reinit_completion (int *) ;
 struct sun4i_spi* spi_master_get_devdata (struct spi_master*) ;
 int sun4i_spi_enable_interrupt (struct sun4i_spi*,int) ;
 int sun4i_spi_fill_fifo (struct sun4i_spi*,int) ;
 int sun4i_spi_read (struct sun4i_spi*,int ) ;
 int sun4i_spi_write (struct sun4i_spi*,int ,int) ;
 unsigned int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int sun4i_spi_transfer_one(struct spi_master *master,
      struct spi_device *spi,
      struct spi_transfer *tfr)
{
 struct sun4i_spi *sspi = spi_master_get_devdata(master);
 unsigned int mclk_rate, div, timeout;
 unsigned int start, end, tx_time;
 unsigned int tx_len = 0;
 int ret = 0;
 u32 reg;


 if (tfr->len > SUN4I_MAX_XFER_SIZE)
  return -EMSGSIZE;

 if (tfr->tx_buf && tfr->len >= SUN4I_MAX_XFER_SIZE)
  return -EMSGSIZE;

 reinit_completion(&sspi->done);
 sspi->tx_buf = tfr->tx_buf;
 sspi->rx_buf = tfr->rx_buf;
 sspi->len = tfr->len;


 sun4i_spi_write(sspi, SUN4I_INT_STA_REG, ~0);


 reg = sun4i_spi_read(sspi, SUN4I_CTL_REG);


 sun4i_spi_write(sspi, SUN4I_CTL_REG,
   reg | SUN4I_CTL_RF_RST | SUN4I_CTL_TF_RST);





 if (spi->mode & SPI_CPOL)
  reg |= SUN4I_CTL_CPOL;
 else
  reg &= ~SUN4I_CTL_CPOL;

 if (spi->mode & SPI_CPHA)
  reg |= SUN4I_CTL_CPHA;
 else
  reg &= ~SUN4I_CTL_CPHA;

 if (spi->mode & SPI_LSB_FIRST)
  reg |= SUN4I_CTL_LMTF;
 else
  reg &= ~SUN4I_CTL_LMTF;






 if (sspi->rx_buf)
  reg &= ~SUN4I_CTL_DHB;
 else
  reg |= SUN4I_CTL_DHB;

 sun4i_spi_write(sspi, SUN4I_CTL_REG, reg);


 mclk_rate = clk_get_rate(sspi->mclk);
 if (mclk_rate < (2 * tfr->speed_hz)) {
  clk_set_rate(sspi->mclk, 2 * tfr->speed_hz);
  mclk_rate = clk_get_rate(sspi->mclk);
 }
 div = mclk_rate / (2 * tfr->speed_hz);
 if (div <= (SUN4I_CLK_CTL_CDR2_MASK + 1)) {
  if (div > 0)
   div--;

  reg = SUN4I_CLK_CTL_CDR2(div) | SUN4I_CLK_CTL_DRS;
 } else {
  div = ilog2(mclk_rate) - ilog2(tfr->speed_hz);
  reg = SUN4I_CLK_CTL_CDR1(div);
 }

 sun4i_spi_write(sspi, SUN4I_CLK_CTL_REG, reg);


 if (sspi->tx_buf)
  tx_len = tfr->len;


 sun4i_spi_write(sspi, SUN4I_BURST_CNT_REG, SUN4I_BURST_CNT(tfr->len));
 sun4i_spi_write(sspi, SUN4I_XMIT_CNT_REG, SUN4I_XMIT_CNT(tx_len));






 sun4i_spi_fill_fifo(sspi, SUN4I_FIFO_DEPTH - 1);


 sun4i_spi_enable_interrupt(sspi, SUN4I_INT_CTL_TC |
      SUN4I_INT_CTL_RF_F34);

 if (tx_len > SUN4I_FIFO_DEPTH)
  sun4i_spi_enable_interrupt(sspi, SUN4I_INT_CTL_TF_E34);


 reg = sun4i_spi_read(sspi, SUN4I_CTL_REG);
 sun4i_spi_write(sspi, SUN4I_CTL_REG, reg | SUN4I_CTL_XCH);

 tx_time = max(tfr->len * 8 * 2 / (tfr->speed_hz / 1000), 100U);
 start = jiffies;
 timeout = wait_for_completion_timeout(&sspi->done,
           msecs_to_jiffies(tx_time));
 end = jiffies;
 if (!timeout) {
  dev_warn(&master->dev,
    "%s: timeout transferring %u bytes@%iHz for %i(%i)ms",
    dev_name(&spi->dev), tfr->len, tfr->speed_hz,
    jiffies_to_msecs(end - start), tx_time);
  ret = -ETIMEDOUT;
  goto out;
 }


out:
 sun4i_spi_write(sspi, SUN4I_INT_CTL_REG, 0);

 return ret;
}
