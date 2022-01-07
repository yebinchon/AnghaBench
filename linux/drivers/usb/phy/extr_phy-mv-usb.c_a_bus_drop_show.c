
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int a_bus_drop; } ;
struct mv_otg {TYPE_1__ otg_ctrl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct mv_otg* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
a_bus_drop_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct mv_otg *mvotg = dev_get_drvdata(dev);
 return scnprintf(buf, PAGE_SIZE, "%d\n",
    mvotg->otg_ctrl.a_bus_drop);
}
