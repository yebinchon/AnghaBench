
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sun6i_spi {unsigned int len; int fifo_depth; int done; scalar_t__ tx_buf; int mclk; scalar_t__ rx_buf; } ;
struct spi_transfer {unsigned int len; int speed_hz; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_master {int dev; } ;
struct spi_device {int mode; int dev; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LSB_FIRST ;
 unsigned int SUN6I_BURST_CNT (unsigned int) ;
 int SUN6I_BURST_CNT_REG ;
 int SUN6I_BURST_CTL_CNT_REG ;
 unsigned int SUN6I_BURST_CTL_CNT_STC (unsigned int) ;
 unsigned int SUN6I_CLK_CTL_CDR1 (unsigned int) ;
 unsigned int SUN6I_CLK_CTL_CDR2 (unsigned int) ;
 int SUN6I_CLK_CTL_CDR2_MASK ;
 unsigned int SUN6I_CLK_CTL_DRS ;
 int SUN6I_CLK_CTL_REG ;
 int SUN6I_FIFO_CTL_REG ;
 unsigned int SUN6I_FIFO_CTL_RF_RDY_TRIG_LEVEL_BITS ;
 unsigned int SUN6I_FIFO_CTL_RF_RST ;
 unsigned int SUN6I_FIFO_CTL_TF_ERQ_TRIG_LEVEL_BITS ;
 unsigned int SUN6I_FIFO_CTL_TF_RST ;
 int SUN6I_INT_CTL_REG ;
 unsigned int SUN6I_INT_CTL_RF_RDY ;
 unsigned int SUN6I_INT_CTL_TC ;
 unsigned int SUN6I_INT_CTL_TF_ERQ ;
 int SUN6I_INT_STA_REG ;
 unsigned int SUN6I_MAX_XFER_SIZE ;
 unsigned int SUN6I_TFR_CTL_CPHA ;
 unsigned int SUN6I_TFR_CTL_CPOL ;
 unsigned int SUN6I_TFR_CTL_CS_MANUAL ;
 unsigned int SUN6I_TFR_CTL_DHB ;
 unsigned int SUN6I_TFR_CTL_FBS ;
 int SUN6I_TFR_CTL_REG ;
 unsigned int SUN6I_TFR_CTL_XCH ;
 unsigned int SUN6I_XMIT_CNT (unsigned int) ;
 int SUN6I_XMIT_CNT_REG ;
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
 struct sun6i_spi* spi_master_get_devdata (struct spi_master*) ;
 int sun6i_spi_enable_interrupt (struct sun6i_spi*,unsigned int) ;
 int sun6i_spi_fill_fifo (struct sun6i_spi*,int) ;
 unsigned int sun6i_spi_read (struct sun6i_spi*,int ) ;
 int sun6i_spi_write (struct sun6i_spi*,int ,unsigned int) ;
 unsigned int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int sun6i_spi_transfer_one(struct spi_master *master,
      struct spi_device *spi,
      struct spi_transfer *tfr)
{
 struct sun6i_spi *sspi = spi_master_get_devdata(master);
 unsigned int mclk_rate, div, timeout;
 unsigned int start, end, tx_time;
 unsigned int trig_level;
 unsigned int tx_len = 0;
 int ret = 0;
 u32 reg;

 if (tfr->len > SUN6I_MAX_XFER_SIZE)
  return -EINVAL;

 reinit_completion(&sspi->done);
 sspi->tx_buf = tfr->tx_buf;
 sspi->rx_buf = tfr->rx_buf;
 sspi->len = tfr->len;


 sun6i_spi_write(sspi, SUN6I_INT_STA_REG, ~0);


 sun6i_spi_write(sspi, SUN6I_FIFO_CTL_REG,
   SUN6I_FIFO_CTL_RF_RST | SUN6I_FIFO_CTL_TF_RST);







 trig_level = sspi->fifo_depth / 4 * 3;
 sun6i_spi_write(sspi, SUN6I_FIFO_CTL_REG,
   (trig_level << SUN6I_FIFO_CTL_RF_RDY_TRIG_LEVEL_BITS) |
   (trig_level << SUN6I_FIFO_CTL_TF_ERQ_TRIG_LEVEL_BITS));





 reg = sun6i_spi_read(sspi, SUN6I_TFR_CTL_REG);

 if (spi->mode & SPI_CPOL)
  reg |= SUN6I_TFR_CTL_CPOL;
 else
  reg &= ~SUN6I_TFR_CTL_CPOL;

 if (spi->mode & SPI_CPHA)
  reg |= SUN6I_TFR_CTL_CPHA;
 else
  reg &= ~SUN6I_TFR_CTL_CPHA;

 if (spi->mode & SPI_LSB_FIRST)
  reg |= SUN6I_TFR_CTL_FBS;
 else
  reg &= ~SUN6I_TFR_CTL_FBS;





 if (sspi->rx_buf)
  reg &= ~SUN6I_TFR_CTL_DHB;
 else
  reg |= SUN6I_TFR_CTL_DHB;


 reg |= SUN6I_TFR_CTL_CS_MANUAL;

 sun6i_spi_write(sspi, SUN6I_TFR_CTL_REG, reg);


 mclk_rate = clk_get_rate(sspi->mclk);
 if (mclk_rate < (2 * tfr->speed_hz)) {
  clk_set_rate(sspi->mclk, 2 * tfr->speed_hz);
  mclk_rate = clk_get_rate(sspi->mclk);
 }
 div = mclk_rate / (2 * tfr->speed_hz);
 if (div <= (SUN6I_CLK_CTL_CDR2_MASK + 1)) {
  if (div > 0)
   div--;

  reg = SUN6I_CLK_CTL_CDR2(div) | SUN6I_CLK_CTL_DRS;
 } else {
  div = ilog2(mclk_rate) - ilog2(tfr->speed_hz);
  reg = SUN6I_CLK_CTL_CDR1(div);
 }

 sun6i_spi_write(sspi, SUN6I_CLK_CTL_REG, reg);


 if (sspi->tx_buf)
  tx_len = tfr->len;


 sun6i_spi_write(sspi, SUN6I_BURST_CNT_REG, SUN6I_BURST_CNT(tfr->len));
 sun6i_spi_write(sspi, SUN6I_XMIT_CNT_REG, SUN6I_XMIT_CNT(tx_len));
 sun6i_spi_write(sspi, SUN6I_BURST_CTL_CNT_REG,
   SUN6I_BURST_CTL_CNT_STC(tx_len));


 sun6i_spi_fill_fifo(sspi, sspi->fifo_depth);


 sun6i_spi_write(sspi, SUN6I_INT_CTL_REG, SUN6I_INT_CTL_TC);
 sun6i_spi_enable_interrupt(sspi, SUN6I_INT_CTL_TC |
      SUN6I_INT_CTL_RF_RDY);
 if (tx_len > sspi->fifo_depth)
  sun6i_spi_enable_interrupt(sspi, SUN6I_INT_CTL_TF_ERQ);


 reg = sun6i_spi_read(sspi, SUN6I_TFR_CTL_REG);
 sun6i_spi_write(sspi, SUN6I_TFR_CTL_REG, reg | SUN6I_TFR_CTL_XCH);

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
 sun6i_spi_write(sspi, SUN6I_INT_CTL_REG, 0);

 return ret;
}
