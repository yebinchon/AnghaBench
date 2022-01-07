
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; } ;
struct adis {int dummy; } ;


 int * adis16203_addresses ;
 int adis_write_reg_16 (struct adis*,int ,int) ;
 struct adis* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16203_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct adis *st = iio_priv(indio_dev);

 u8 addr = adis16203_addresses[chan->scan_index];

 return adis_write_reg_16(st, addr, val & 0x3FFF);
}
