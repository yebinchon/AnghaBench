
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct bq24735 {int poll; scalar_t__ poll_interval; } ;


 int cancel_delayed_work_sync (int *) ;
 struct bq24735* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int bq24735_charger_remove(struct i2c_client *client)
{
 struct bq24735 *charger = i2c_get_clientdata(client);

 if (charger->poll_interval)
  cancel_delayed_work_sync(&charger->poll);

 return 0;
}
