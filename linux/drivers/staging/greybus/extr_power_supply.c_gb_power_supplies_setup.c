
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_power_supply {int dummy; } ;
struct gb_power_supplies {int supplies_count; int supplies_lock; int supply; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int gb_power_supplies_get_count (struct gb_power_supplies*) ;
 int gb_power_supply_config (struct gb_power_supplies*,int) ;
 int kcalloc (int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_power_supplies_setup(struct gb_power_supplies *supplies)
{
 struct gb_connection *connection = supplies->connection;
 int ret;
 int i;

 mutex_lock(&supplies->supplies_lock);

 ret = gb_power_supplies_get_count(supplies);
 if (ret < 0)
  goto out;

 supplies->supply = kcalloc(supplies->supplies_count,
         sizeof(struct gb_power_supply),
         GFP_KERNEL);

 if (!supplies->supply) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0; i < supplies->supplies_count; i++) {
  ret = gb_power_supply_config(supplies, i);
  if (ret < 0) {
   dev_err(&connection->bundle->dev,
    "Fail to configure supplies devices\n");
   goto out;
  }
 }
out:
 mutex_unlock(&supplies->supplies_lock);
 return ret;
}
