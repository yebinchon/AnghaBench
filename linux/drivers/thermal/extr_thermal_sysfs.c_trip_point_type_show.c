
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thermal_zone_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_4__ {int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;} ;


 int EINVAL ;
 int EPERM ;




 int sprintf (char*,char*) ;
 int sscanf (int ,char*,int*) ;
 int stub1 (struct thermal_zone_device*,int,int*) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static ssize_t
trip_point_type_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct thermal_zone_device *tz = to_thermal_zone(dev);
 enum thermal_trip_type type;
 int trip, result;

 if (!tz->ops->get_trip_type)
  return -EPERM;

 if (sscanf(attr->attr.name, "trip_point_%d_type", &trip) != 1)
  return -EINVAL;

 result = tz->ops->get_trip_type(tz, trip, &type);
 if (result)
  return result;

 switch (type) {
 case 130:
  return sprintf(buf, "critical\n");
 case 129:
  return sprintf(buf, "hot\n");
 case 128:
  return sprintf(buf, "passive\n");
 case 131:
  return sprintf(buf, "active\n");
 default:
  return sprintf(buf, "unknown\n");
 }
}
