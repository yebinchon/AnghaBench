
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad5933_state {int work; } ;


 int AD5933_INIT_EXCITATION_TIME_ms ;
 struct ad5933_state* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int ad5933_ring_postenable(struct iio_dev *indio_dev)
{
 struct ad5933_state *st = iio_priv(indio_dev);
 schedule_delayed_work(&st->work,
         msecs_to_jiffies(AD5933_INIT_EXCITATION_TIME_ms));
 return 0;
}
