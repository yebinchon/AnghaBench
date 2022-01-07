
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m41t80_data {int features; } ;
struct i2c_client {int dummy; } ;


 int M41T80_FEATURE_HT ;
 struct m41t80_data* i2c_get_clientdata (struct i2c_client*) ;
 int misc_deregister (int *) ;
 int unregister_reboot_notifier (int *) ;
 int wdt_dev ;
 int wdt_notifier ;

__attribute__((used)) static int m41t80_remove(struct i2c_client *client)
{
 return 0;
}
