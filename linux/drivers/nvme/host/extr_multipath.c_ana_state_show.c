
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns {size_t ana_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** nvme_ana_state_names ;
 struct nvme_ns* nvme_get_ns_from_dev (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t ana_state_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct nvme_ns *ns = nvme_get_ns_from_dev(dev);

 return sprintf(buf, "%s\n", nvme_ana_state_names[ns->ana_state]);
}
