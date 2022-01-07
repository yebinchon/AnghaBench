
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_slave {int dev; } ;
struct TYPE_2__ {int read; } ;
struct bq27xxx_device_info {char* name; TYPE_1__ bus; int chip; int * dev; } ;


 int BQ27000 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bq27xxx_battery_hdq_read ;
 int bq27xxx_battery_setup (struct bq27xxx_device_info*) ;
 int dev_set_drvdata (int *,struct bq27xxx_device_info*) ;
 struct bq27xxx_device_info* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int bq27xxx_battery_hdq_add_slave(struct w1_slave *sl)
{
 struct bq27xxx_device_info *di;

 di = devm_kzalloc(&sl->dev, sizeof(*di), GFP_KERNEL);
 if (!di)
  return -ENOMEM;

 dev_set_drvdata(&sl->dev, di);

 di->dev = &sl->dev;
 di->chip = BQ27000;
 di->name = "bq27000-battery";
 di->bus.read = bq27xxx_battery_hdq_read;

 return bq27xxx_battery_setup(di);
}
