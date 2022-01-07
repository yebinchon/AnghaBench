
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;
struct ade7854_state {int irq; struct i2c_client* i2c; int write_reg; int read_reg; } ;


 int ENOMEM ;
 int ade7854_i2c_read_reg ;
 int ade7854_i2c_write_reg ;
 int ade7854_probe (struct iio_dev*,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ade7854_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct ade7854_state *st;
 struct iio_dev *indio_dev;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;
 st = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 st->read_reg = ade7854_i2c_read_reg;
 st->write_reg = ade7854_i2c_write_reg;
 st->i2c = client;
 st->irq = client->irq;

 return ade7854_probe(indio_dev, &client->dev);
}
