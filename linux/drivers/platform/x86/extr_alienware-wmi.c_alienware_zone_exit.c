
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_8__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_11__ {size_t num_zones; } ;
struct TYPE_9__ {TYPE_3__* name; } ;
struct TYPE_10__ {TYPE_2__ attr; } ;


 int global_led ;
 int kfree (TYPE_3__*) ;
 int led_classdev_unregister (int *) ;
 TYPE_6__* quirks ;
 int sysfs_remove_group (int *,int *) ;
 int zone_attribute_group ;
 TYPE_3__* zone_attrs ;
 TYPE_3__* zone_data ;
 TYPE_3__* zone_dev_attrs ;

__attribute__((used)) static void alienware_zone_exit(struct platform_device *dev)
{
 u8 zone;

 sysfs_remove_group(&dev->dev.kobj, &zone_attribute_group);
 led_classdev_unregister(&global_led);
 if (zone_dev_attrs) {
  for (zone = 0; zone < quirks->num_zones; zone++)
   kfree(zone_dev_attrs[zone].attr.name);
 }
 kfree(zone_dev_attrs);
 kfree(zone_data);
 kfree(zone_attrs);
}
