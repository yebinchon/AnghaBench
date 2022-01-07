
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int dev; } ;
struct bq27xxx_device_info {int dummy; } ;


 int bq27xxx_battery_teardown (struct bq27xxx_device_info*) ;
 struct bq27xxx_device_info* dev_get_drvdata (int *) ;

__attribute__((used)) static void bq27xxx_battery_hdq_remove_slave(struct w1_slave *sl)
{
 struct bq27xxx_device_info *di = dev_get_drvdata(&sl->dev);

 bq27xxx_battery_teardown(di);
}
