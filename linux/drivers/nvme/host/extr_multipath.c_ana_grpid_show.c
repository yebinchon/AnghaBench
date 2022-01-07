
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ana_grpid; } ;


 TYPE_1__* nvme_get_ns_from_dev (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ana_grpid_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 return sprintf(buf, "%d\n", nvme_get_ns_from_dev(dev)->ana_grpid);
}
