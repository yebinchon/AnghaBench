
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int (* write_reg ) (struct device*,int ,int ,int) ;int (* read_reg ) (struct device*,int ,int *,int) ;} ;


 int ADE7854_CONFIG ;
 int BIT (int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;
 int stub1 (struct device*,int ,int *,int) ;
 int stub2 (struct device*,int ,int ,int) ;

__attribute__((used)) static int ade7854_reset(struct device *dev)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ade7854_state *st = iio_priv(indio_dev);
 u32 val;

 st->read_reg(dev, ADE7854_CONFIG, &val, 16);
 val |= BIT(7);

 return st->write_reg(dev, ADE7854_CONFIG, val, 16);
}
