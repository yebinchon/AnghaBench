
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7192_state {int mode; int sd; int gpocon; } ;
typedef int ssize_t ;


 int AD7192_GPOCON_BPDSW ;
 int AD7192_MODE_ACX ;


 int EINVAL ;
 int ad_sd_write_reg (int *,int const,int,int ) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad7192_state* iio_priv (struct iio_dev*) ;
 int strtobool (char const*,int*) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad7192_set(struct device *dev,
     struct device_attribute *attr,
     const char *buf,
     size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7192_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int ret;
 bool val;

 ret = strtobool(buf, &val);
 if (ret < 0)
  return ret;

 ret = iio_device_claim_direct_mode(indio_dev);
 if (ret)
  return ret;

 switch ((u32)this_attr->address) {
 case 129:
  if (val)
   st->gpocon |= AD7192_GPOCON_BPDSW;
  else
   st->gpocon &= ~AD7192_GPOCON_BPDSW;

  ad_sd_write_reg(&st->sd, 129, 1, st->gpocon);
  break;
 case 128:
  if (val)
   st->mode |= AD7192_MODE_ACX;
  else
   st->mode &= ~AD7192_MODE_ACX;

  ad_sd_write_reg(&st->sd, 128, 3, st->mode);
  break;
 default:
  ret = -EINVAL;
 }

 iio_device_release_direct_mode(indio_dev);

 return ret ? ret : len;
}
