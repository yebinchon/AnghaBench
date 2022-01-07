
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct bq27xxx_device_info {int id; } ;


 int battery_id ;
 int battery_mutex ;
 int bq27xxx_battery_teardown (struct bq27xxx_device_info*) ;
 struct bq27xxx_device_info* i2c_get_clientdata (struct i2c_client*) ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bq27xxx_battery_i2c_remove(struct i2c_client *client)
{
 struct bq27xxx_device_info *di = i2c_get_clientdata(client);

 bq27xxx_battery_teardown(di);

 mutex_lock(&battery_mutex);
 idr_remove(&battery_id, di->id);
 mutex_unlock(&battery_mutex);

 return 0;
}
