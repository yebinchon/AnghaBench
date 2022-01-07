
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_zone {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int alienware_update_led (struct platform_zone*) ;
 struct platform_zone* match_zone (struct device_attribute*) ;
 int parse_rgb (char const*,struct platform_zone*) ;
 int pr_err (char*) ;

__attribute__((used)) static ssize_t zone_set(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct platform_zone *target_zone;
 int ret;
 target_zone = match_zone(attr);
 if (target_zone == ((void*)0)) {
  pr_err("alienware-wmi: invalid target zone\n");
  return 1;
 }
 ret = parse_rgb(buf, target_zone);
 if (ret)
  return ret;
 ret = alienware_update_led(target_zone);
 return ret ? ret : count;
}
