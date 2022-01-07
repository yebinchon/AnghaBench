
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int rs5c_sysfs_unregister (int *) ;

__attribute__((used)) static int rs5c372_remove(struct i2c_client *client)
{
 rs5c_sysfs_unregister(&client->dev);
 return 0;
}
