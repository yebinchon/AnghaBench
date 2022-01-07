
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {size_t vovp; } ;
struct bq24257_device {TYPE_1__ init_data; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int * bq24257_vovp_map ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 struct bq24257_device* power_supply_get_drvdata (struct power_supply*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t bq24257_show_ovp_voltage(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct power_supply *psy = dev_get_drvdata(dev);
 struct bq24257_device *bq = power_supply_get_drvdata(psy);

 return scnprintf(buf, PAGE_SIZE, "%u\n",
    bq24257_vovp_map[bq->init_data.vovp]);
}
