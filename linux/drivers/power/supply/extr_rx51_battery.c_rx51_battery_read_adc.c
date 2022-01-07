
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;


 int iio_read_channel_average_raw (struct iio_channel*,int*) ;

__attribute__((used)) static int rx51_battery_read_adc(struct iio_channel *channel)
{
 int val, err;
 err = iio_read_channel_average_raw(channel, &val);
 if (err < 0)
  return err;
 return val;
}
