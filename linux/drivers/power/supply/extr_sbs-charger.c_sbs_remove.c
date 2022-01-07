
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbs_info {int work; } ;
struct i2c_client {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct sbs_info* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int sbs_remove(struct i2c_client *client)
{
 struct sbs_info *chip = i2c_get_clientdata(client);

 cancel_delayed_work_sync(&chip->work);

 return 0;
}
