
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int rx8025_sysfs_unregister (int *) ;

__attribute__((used)) static int rx8025_remove(struct i2c_client *client)
{
 rx8025_sysfs_unregister(&client->dev);
 return 0;
}
