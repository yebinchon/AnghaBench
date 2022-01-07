
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switchtec_dev {TYPE_1__* mmio_sys_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int firmware_version; } ;


 int ioread32 (int *) ;
 int sprintf (char*,char*,int) ;
 struct switchtec_dev* to_stdev (struct device*) ;

__attribute__((used)) static ssize_t fw_version_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct switchtec_dev *stdev = to_stdev(dev);
 u32 ver;

 ver = ioread32(&stdev->mmio_sys_info->firmware_version);

 return sprintf(buf, "%08x\n", ver);
}
