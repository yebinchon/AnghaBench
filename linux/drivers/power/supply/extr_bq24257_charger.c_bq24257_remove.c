
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct bq24257_device {int iilimit_setup_work; scalar_t__ iilimit_autoset_enable; } ;


 int F_RESET ;
 int bq24257_field_write (struct bq24257_device*,int ,int) ;
 int cancel_delayed_work_sync (int *) ;
 struct bq24257_device* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int bq24257_remove(struct i2c_client *client)
{
 struct bq24257_device *bq = i2c_get_clientdata(client);

 if (bq->iilimit_autoset_enable)
  cancel_delayed_work_sync(&bq->iilimit_setup_work);

 bq24257_field_write(bq, F_RESET, 1);

 return 0;
}
