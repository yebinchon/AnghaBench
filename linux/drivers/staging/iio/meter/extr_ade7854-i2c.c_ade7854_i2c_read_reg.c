
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int* tx; int* rx; int buf_lock; int i2c; } ;


 int EINVAL ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int i2c_master_recv (int ,int*,int) ;
 int i2c_master_send (int ,int*,int) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ade7854_i2c_read_reg(struct device *dev,
    u16 reg_address,
    u32 *val,
    int bits)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ade7854_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->buf_lock);
 st->tx[0] = (reg_address >> 8) & 0xFF;
 st->tx[1] = reg_address & 0xFF;

 ret = i2c_master_send(st->i2c, st->tx, 2);
 if (ret < 0)
  goto unlock;

 ret = i2c_master_recv(st->i2c, st->rx, bits);
 if (ret < 0)
  goto unlock;

 switch (bits) {
 case 8:
  *val = st->rx[0];
  break;
 case 16:
  *val = (st->rx[0] << 8) | st->rx[1];
  break;
 case 24:
  *val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2];
  break;
 case 32:
  *val = (st->rx[0] << 24) | (st->rx[1] << 16) |
   (st->rx[2] << 8) | st->rx[3];
  break;
 default:
  ret = -EINVAL;
  goto unlock;
 }

unlock:
 mutex_unlock(&st->buf_lock);
 return ret;
}
