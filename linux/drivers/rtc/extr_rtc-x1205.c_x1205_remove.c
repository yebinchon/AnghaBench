
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int x1205_sysfs_unregister (int *) ;

__attribute__((used)) static int x1205_remove(struct i2c_client *client)
{
 x1205_sysfs_unregister(&client->dev);
 return 0;
}
