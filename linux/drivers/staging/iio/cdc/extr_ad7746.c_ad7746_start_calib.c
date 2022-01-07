
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7746_chip_info {int config; int lock; int client; } ;
typedef int ssize_t ;


 int AD7746_REG_CFG ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct ad7746_chip_info* iio_priv (struct iio_dev*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static inline ssize_t ad7746_start_calib(struct device *dev,
      struct device_attribute *attr,
      const char *buf,
      size_t len,
      u8 regval)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7746_chip_info *chip = iio_priv(indio_dev);
 int ret, timeout = 10;
 bool doit;

 ret = strtobool(buf, &doit);
 if (ret < 0)
  return ret;

 if (!doit)
  return 0;

 mutex_lock(&chip->lock);
 regval |= chip->config;
 ret = i2c_smbus_write_byte_data(chip->client, AD7746_REG_CFG, regval);
 if (ret < 0)
  goto unlock;

 do {
  msleep(20);
  ret = i2c_smbus_read_byte_data(chip->client, AD7746_REG_CFG);
  if (ret < 0)
   goto unlock;

 } while ((ret == regval) && timeout--);

 mutex_unlock(&chip->lock);

 return len;

unlock:
 mutex_unlock(&chip->lock);
 return ret;
}
