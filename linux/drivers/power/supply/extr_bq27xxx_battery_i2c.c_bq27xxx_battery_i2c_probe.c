
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int driver_data; int name; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
struct TYPE_2__ {int write_bulk; int read_bulk; int write; int read; } ;
struct bq27xxx_device_info {int id; char* name; int work; TYPE_1__ bus; int chip; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int IRQF_ONESHOT ;
 int battery_id ;
 int battery_mutex ;
 int bq27xxx_battery_i2c_bulk_read ;
 int bq27xxx_battery_i2c_bulk_write ;
 int bq27xxx_battery_i2c_read ;
 int bq27xxx_battery_i2c_write ;
 int bq27xxx_battery_irq_handler_thread ;
 int bq27xxx_battery_setup (struct bq27xxx_device_info*) ;
 int dev_err (int *,char*,scalar_t__,int) ;
 char* devm_kasprintf (int *,int ,char*,int ,int) ;
 struct bq27xxx_device_info* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int ,char*,struct bq27xxx_device_info*) ;
 int i2c_set_clientdata (struct i2c_client*,struct bq27xxx_device_info*) ;
 int idr_alloc (int *,struct i2c_client*,int ,int ,int ) ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int bq27xxx_battery_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct bq27xxx_device_info *di;
 int ret;
 char *name;
 int num;


 mutex_lock(&battery_mutex);
 num = idr_alloc(&battery_id, client, 0, 0, GFP_KERNEL);
 mutex_unlock(&battery_mutex);
 if (num < 0)
  return num;

 name = devm_kasprintf(&client->dev, GFP_KERNEL, "%s-%d", id->name, num);
 if (!name)
  goto err_mem;

 di = devm_kzalloc(&client->dev, sizeof(*di), GFP_KERNEL);
 if (!di)
  goto err_mem;

 di->id = num;
 di->dev = &client->dev;
 di->chip = id->driver_data;
 di->name = name;

 di->bus.read = bq27xxx_battery_i2c_read;
 di->bus.write = bq27xxx_battery_i2c_write;
 di->bus.read_bulk = bq27xxx_battery_i2c_bulk_read;
 di->bus.write_bulk = bq27xxx_battery_i2c_bulk_write;

 ret = bq27xxx_battery_setup(di);
 if (ret)
  goto err_failed;


 schedule_delayed_work(&di->work, 60 * HZ);

 i2c_set_clientdata(client, di);

 if (client->irq) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
    ((void*)0), bq27xxx_battery_irq_handler_thread,
    IRQF_ONESHOT,
    di->name, di);
  if (ret) {
   dev_err(&client->dev,
    "Unable to register IRQ %d error %d\n",
    client->irq, ret);
   return ret;
  }
 }

 return 0;

err_mem:
 ret = -ENOMEM;

err_failed:
 mutex_lock(&battery_mutex);
 idr_remove(&battery_id, num);
 mutex_unlock(&battery_mutex);

 return ret;
}
