
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_power_supplies {int supplies_count; int supplies_lock; int * supply; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int gb_power_supply_enable (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_power_supplies_register(struct gb_power_supplies *supplies)
{
 struct gb_connection *connection = supplies->connection;
 int ret = 0;
 int i;

 mutex_lock(&supplies->supplies_lock);

 for (i = 0; i < supplies->supplies_count; i++) {
  ret = gb_power_supply_enable(&supplies->supply[i]);
  if (ret < 0) {
   dev_err(&connection->bundle->dev,
    "Fail to enable supplies devices\n");
   break;
  }
 }

 mutex_unlock(&supplies->supplies_lock);
 return ret;
}
