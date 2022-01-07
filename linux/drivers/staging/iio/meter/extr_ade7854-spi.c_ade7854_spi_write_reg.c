
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int* tx; int buf_lock; int spi; } ;


 int ADE7854_WRITE_REG ;
 int EINVAL ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int) ;

__attribute__((used)) static int ade7854_spi_write_reg(struct device *dev,
     u16 reg_address,
     u32 val,
     int bits)
{
 int ret;
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ade7854_state *st = iio_priv(indio_dev);
 struct spi_transfer xfer = {
  .tx_buf = st->tx,
  .bits_per_word = 8,
  .len = 4,
 };

 mutex_lock(&st->buf_lock);
 st->tx[0] = ADE7854_WRITE_REG;
 st->tx[1] = (reg_address >> 8) & 0xFF;
 st->tx[2] = reg_address & 0xFF;
 switch (bits) {
 case 8:
  st->tx[3] = val & 0xFF;
  break;
 case 16:
  xfer.len = 5;
  st->tx[3] = (val >> 8) & 0xFF;
  st->tx[4] = val & 0xFF;
  break;
 case 24:
  xfer.len = 6;
  st->tx[3] = (val >> 16) & 0xFF;
  st->tx[4] = (val >> 8) & 0xFF;
  st->tx[5] = val & 0xFF;
  break;
 case 32:
  xfer.len = 7;
  st->tx[3] = (val >> 24) & 0xFF;
  st->tx[4] = (val >> 16) & 0xFF;
  st->tx[5] = (val >> 8) & 0xFF;
  st->tx[6] = val & 0xFF;
  break;
 default:
  ret = -EINVAL;
  goto unlock;
 }

 ret = spi_sync_transfer(st->spi, &xfer, 1);
unlock:
 mutex_unlock(&st->buf_lock);

 return ret;
}
