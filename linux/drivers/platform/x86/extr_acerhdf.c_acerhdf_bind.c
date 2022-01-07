
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct thermal_cooling_device {int dummy; } ;


 int EINVAL ;
 int THERMAL_NO_LIMIT ;
 int THERMAL_WEIGHT_DEFAULT ;
 struct thermal_cooling_device* cl_dev ;
 int pr_err (char*) ;
 scalar_t__ thermal_zone_bind_cooling_device (struct thermal_zone_device*,int ,struct thermal_cooling_device*,int ,int ,int ) ;

__attribute__((used)) static int acerhdf_bind(struct thermal_zone_device *thermal,
   struct thermal_cooling_device *cdev)
{

 if (cdev != cl_dev)
  return 0;

 if (thermal_zone_bind_cooling_device(thermal, 0, cdev,
   THERMAL_NO_LIMIT, THERMAL_NO_LIMIT,
   THERMAL_WEIGHT_DEFAULT)) {
  pr_err("error binding cooling dev\n");
  return -EINVAL;
 }
 return 0;
}
