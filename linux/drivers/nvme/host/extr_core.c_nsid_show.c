
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ns_id; } ;


 TYPE_1__* dev_to_ns_head (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t nsid_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 return sprintf(buf, "%d\n", dev_to_ns_head(dev)->ns_id);
}
