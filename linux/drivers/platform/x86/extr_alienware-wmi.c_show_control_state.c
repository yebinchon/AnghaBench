
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ LEGACY_BOOTING ;
 scalar_t__ LEGACY_SUSPEND ;
 int PAGE_SIZE ;
 scalar_t__ lighting_control_state ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t show_control_state(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 if (lighting_control_state == LEGACY_BOOTING)
  return scnprintf(buf, PAGE_SIZE, "[booting] running suspend\n");
 else if (lighting_control_state == LEGACY_SUSPEND)
  return scnprintf(buf, PAGE_SIZE, "booting running [suspend]\n");
 return scnprintf(buf, PAGE_SIZE, "booting [running] suspend\n");
}
