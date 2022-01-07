
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int bits_per_word; unsigned int tx_nbits; unsigned int rx_nbits; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dev; } ;
struct a3700_spi {int buf_len; int xmit_data; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;


 int A3700_SPI_DATA_OUT_REG ;
 int A3700_SPI_IF_CFG_REG ;
 int A3700_SPI_IF_DIN_CNT_REG ;
 int A3700_SPI_RFIFO_RDY ;
 int A3700_SPI_RW_EN ;
 int A3700_SPI_TIMEOUT ;
 int A3700_SPI_WFIFO_EMPTY ;
 int A3700_SPI_WFIFO_RDY ;
 int A3700_SPI_XFER_RDY ;
 int A3700_SPI_XFER_START ;
 int A3700_SPI_XFER_STOP ;
 int ETIMEDOUT ;
 int a3700_spi_fifo_flush (struct a3700_spi*) ;
 int a3700_spi_fifo_mode_set (struct a3700_spi*,int) ;
 int a3700_spi_fifo_read (struct a3700_spi*) ;
 int a3700_spi_fifo_thres_set (struct a3700_spi*,unsigned int) ;
 int a3700_spi_fifo_write (struct a3700_spi*) ;
 int a3700_spi_header_set (struct a3700_spi*) ;
 int a3700_spi_pin_mode_set (struct a3700_spi*,unsigned int,int) ;
 int a3700_spi_transfer_abort_fifo (struct a3700_spi*) ;
 int a3700_spi_transfer_wait (struct spi_device*,int ) ;
 int dev_err (int *,char*) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct a3700_spi* spi_master_get_devdata (struct spi_master*) ;
 int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int a3700_spi_transfer_one_fifo(struct spi_master *master,
      struct spi_device *spi,
      struct spi_transfer *xfer)
{
 struct a3700_spi *a3700_spi = spi_master_get_devdata(master);
 int ret = 0, timeout = A3700_SPI_TIMEOUT;
 unsigned int nbits = 0, byte_len;
 u32 val;


 a3700_spi_fifo_mode_set(a3700_spi, 1);


 byte_len = xfer->bits_per_word >> 3;
 a3700_spi_fifo_thres_set(a3700_spi, byte_len);

 if (xfer->tx_buf)
  nbits = xfer->tx_nbits;
 else if (xfer->rx_buf)
  nbits = xfer->rx_nbits;

 a3700_spi_pin_mode_set(a3700_spi, nbits, xfer->rx_buf ? 1 : 0);


 a3700_spi_fifo_flush(a3700_spi);


 a3700_spi_header_set(a3700_spi);

 if (xfer->rx_buf) {



  spireg_write(a3700_spi, A3700_SPI_DATA_OUT_REG, 0);


  spireg_write(a3700_spi, A3700_SPI_IF_DIN_CNT_REG,
        a3700_spi->buf_len);

  val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
  val &= ~A3700_SPI_RW_EN;
  val |= A3700_SPI_XFER_START;
  spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);
 } else if (xfer->tx_buf) {

  val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
  val |= (A3700_SPI_XFER_START | A3700_SPI_RW_EN);
  spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);







  a3700_spi->xmit_data = (a3700_spi->buf_len != 0);
 }

 while (a3700_spi->buf_len) {
  if (a3700_spi->tx_buf) {

   if (!a3700_spi_transfer_wait(spi,
           A3700_SPI_WFIFO_RDY)) {
    dev_err(&spi->dev,
     "wait wfifo ready timed out\n");
    ret = -ETIMEDOUT;
    goto error;
   }

   ret = a3700_spi_fifo_write(a3700_spi);
   if (ret)
    goto error;
  } else if (a3700_spi->rx_buf) {

   if (!a3700_spi_transfer_wait(spi,
           A3700_SPI_RFIFO_RDY)) {
    dev_err(&spi->dev,
     "wait rfifo ready timed out\n");
    ret = -ETIMEDOUT;
    goto error;
   }

   ret = a3700_spi_fifo_read(a3700_spi);
   if (ret)
    goto error;
  }
 }
 if (a3700_spi->tx_buf) {
  if (a3700_spi->xmit_data) {





   if (!a3700_spi_transfer_wait(spi,
           A3700_SPI_WFIFO_EMPTY)) {
    dev_err(&spi->dev, "wait wfifo empty timed out\n");
    return -ETIMEDOUT;
   }
  }

  if (!a3700_spi_transfer_wait(spi, A3700_SPI_XFER_RDY)) {
   dev_err(&spi->dev, "wait xfer ready timed out\n");
   return -ETIMEDOUT;
  }

  val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
  val |= A3700_SPI_XFER_STOP;
  spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);
 }

 while (--timeout) {
  val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
  if (!(val & A3700_SPI_XFER_START))
   break;
  udelay(1);
 }

 if (timeout == 0) {
  dev_err(&spi->dev, "wait transfer start clear timed out\n");
  ret = -ETIMEDOUT;
  goto error;
 }

 val &= ~A3700_SPI_XFER_STOP;
 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);
 goto out;

error:
 a3700_spi_transfer_abort_fifo(a3700_spi);
out:
 spi_finalize_current_transfer(master);

 return ret;
}
