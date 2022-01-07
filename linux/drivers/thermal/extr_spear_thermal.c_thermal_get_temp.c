
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct spear_thermal_dev* devdata; } ;
struct spear_thermal_dev {int thermal_base; } ;


 int MD_FACTOR ;
 int readl_relaxed (int ) ;

__attribute__((used)) static inline int thermal_get_temp(struct thermal_zone_device *thermal,
    int *temp)
{
 struct spear_thermal_dev *stdev = thermal->devdata;





 *temp = (readl_relaxed(stdev->thermal_base) & 0x7F) * MD_FACTOR;
 return 0;
}
