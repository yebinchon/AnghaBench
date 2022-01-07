
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct platform_zone {int location; scalar_t__ attr; } ;
struct device_attribute {int dummy; } ;
struct TYPE_2__ {size_t num_zones; } ;


 int pr_debug (char*,int ) ;
 TYPE_1__* quirks ;
 struct platform_zone* zone_data ;

__attribute__((used)) static struct platform_zone *match_zone(struct device_attribute *attr)
{
 u8 zone;

 for (zone = 0; zone < quirks->num_zones; zone++) {
  if ((struct device_attribute *)zone_data[zone].attr == attr) {
   pr_debug("alienware-wmi: matched zone location: %d\n",
     zone_data[zone].location);
   return &zone_data[zone];
  }
 }
 return ((void*)0);
}
