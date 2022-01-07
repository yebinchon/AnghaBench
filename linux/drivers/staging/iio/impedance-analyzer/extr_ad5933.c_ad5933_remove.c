
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int buffer; } ;
struct i2c_client {int dummy; } ;
struct ad5933_state {int mclk; int reg; } ;


 int clk_disable_unprepare (int ) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_kfifo_free (int ) ;
 struct ad5933_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int ad5933_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ad5933_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_kfifo_free(indio_dev->buffer);
 regulator_disable(st->reg);
 clk_disable_unprepare(st->mclk);

 return 0;
}
