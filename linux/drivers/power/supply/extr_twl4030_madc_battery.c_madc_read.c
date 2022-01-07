
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;


 int iio_read_channel_processed (struct iio_channel*,int*) ;

__attribute__((used)) static int madc_read(struct iio_channel *channel)
{
 int val, err;
 err = iio_read_channel_processed(channel, &val);
 if (err < 0)
  return err;

 return val;
}
