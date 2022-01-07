
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {size_t state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int ARRAY_SIZE (char const* const*) ;






 struct nvme_ctrl* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t nvme_sysfs_show_state(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
 static const char *const state_name[] = {
  [129] = "new",
  [130] = "live",
  [128] = "resetting",
  [133] = "connecting",
  [131] = "deleting",
  [132] = "dead",
 };

 if ((unsigned)ctrl->state < ARRAY_SIZE(state_name) &&
     state_name[ctrl->state])
  return sprintf(buf, "%s\n", state_name[ctrl->state]);

 return sprintf(buf, "unknown state\n");
}
