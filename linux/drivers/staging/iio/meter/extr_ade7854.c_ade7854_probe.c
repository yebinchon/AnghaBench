
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int modes; int * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ade7854_state {int buf_lock; } ;


 int INDIO_DIRECT_MODE ;
 int ade7854_info ;
 int ade7854_initial_setup (struct iio_dev*) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

int ade7854_probe(struct iio_dev *indio_dev, struct device *dev)
{
 int ret;
 struct ade7854_state *st = iio_priv(indio_dev);

 mutex_init(&st->buf_lock);

 indio_dev->dev.parent = dev;
 indio_dev->info = &ade7854_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = devm_iio_device_register(dev, indio_dev);
 if (ret)
  return ret;


 return ade7854_initial_setup(indio_dev);
}
