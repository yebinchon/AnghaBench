
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad5933_state {int work; } ;


 int AD5933_CTRL_POWER_DOWN ;
 int ad5933_cmd (struct ad5933_state*,int ) ;
 int cancel_delayed_work_sync (int *) ;
 struct ad5933_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5933_ring_postdisable(struct iio_dev *indio_dev)
{
 struct ad5933_state *st = iio_priv(indio_dev);

 cancel_delayed_work_sync(&st->work);
 return ad5933_cmd(st, AD5933_CTRL_POWER_DOWN);
}
