
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int irq; } ;
struct adt7316_bus {int multi_write; int multi_read; int write; int read; int irq; struct i2c_client* client; } ;


 int adt7316_i2c_multi_read ;
 int adt7316_i2c_multi_write ;
 int adt7316_i2c_read ;
 int adt7316_i2c_write ;
 int adt7316_probe (int *,struct adt7316_bus*,int ) ;

__attribute__((used)) static int adt7316_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct adt7316_bus bus = {
  .client = client,
  .irq = client->irq,
  .read = adt7316_i2c_read,
  .write = adt7316_i2c_write,
  .multi_read = adt7316_i2c_multi_read,
  .multi_write = adt7316_i2c_multi_write,
 };

 return adt7316_probe(&client->dev, &bus, id->name);
}
