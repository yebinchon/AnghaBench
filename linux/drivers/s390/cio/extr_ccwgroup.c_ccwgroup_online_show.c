
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccwgroup_device {scalar_t__ state; } ;
typedef int ssize_t ;


 scalar_t__ CCWGROUP_ONLINE ;
 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

__attribute__((used)) static ssize_t ccwgroup_online_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct ccwgroup_device *gdev = to_ccwgroupdev(dev);
 int online;

 online = (gdev->state == CCWGROUP_ONLINE) ? 1 : 0;

 return scnprintf(buf, PAGE_SIZE, "%d\n", online);
}
