
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int a_bus_drop; } ;
struct ci_hdrc {TYPE_1__ fsm; } ;
typedef unsigned int ssize_t ;


 unsigned int PAGE_SIZE ;
 struct ci_hdrc* dev_get_drvdata (struct device*) ;
 unsigned int scnprintf (char*,unsigned int,char*,int ) ;

__attribute__((used)) static ssize_t
a_bus_drop_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 char *next;
 unsigned size, t;
 struct ci_hdrc *ci = dev_get_drvdata(dev);

 next = buf;
 size = PAGE_SIZE;
 t = scnprintf(next, size, "%d\n", ci->fsm.a_bus_drop);
 size -= t;
 next += t;

 return PAGE_SIZE - size;
}
