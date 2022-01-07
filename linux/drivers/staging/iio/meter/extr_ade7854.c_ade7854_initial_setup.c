
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct iio_dev {struct device dev; } ;


 scalar_t__ ADE7854_STARTUP_DELAY ;
 int ade7854_reset (struct device*) ;
 int ade7854_set_irq (struct device*,int) ;
 int dev_err (struct device*,char*) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ade7854_initial_setup(struct iio_dev *indio_dev)
{
 int ret;
 struct device *dev = &indio_dev->dev;


 ret = ade7854_set_irq(dev, 0);
 if (ret) {
  dev_err(dev, "disable irq failed");
  goto err_ret;
 }

 ade7854_reset(dev);
 usleep_range(ADE7854_STARTUP_DELAY, ADE7854_STARTUP_DELAY + 100);

err_ret:
 return ret;
}
