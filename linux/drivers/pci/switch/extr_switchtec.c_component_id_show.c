
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_dev {TYPE_1__* mmio_sys_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int component_id; } ;


 int ioread16 (int *) ;
 int sprintf (char*,char*,int) ;
 struct switchtec_dev* to_stdev (struct device*) ;

__attribute__((used)) static ssize_t component_id_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct switchtec_dev *stdev = to_stdev(dev);
 int id = ioread16(&stdev->mmio_sys_info->component_id);

 return sprintf(buf, "PM%04X\n", id);
}
