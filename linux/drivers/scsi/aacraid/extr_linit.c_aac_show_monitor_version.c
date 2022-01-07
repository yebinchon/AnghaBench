
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int monitorbuild; int monitorrev; } ;
struct aac_dev {TYPE_1__ adapter_info; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int PAGE_SIZE ;
 TYPE_2__* class_to_shost (struct device*) ;
 int le32_to_cpu (int ) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t aac_show_monitor_version(struct device *device,
     struct device_attribute *attr,
     char *buf)
{
 struct aac_dev *dev = (struct aac_dev*)class_to_shost(device)->hostdata;
 int len, tmp;

 tmp = le32_to_cpu(dev->adapter_info.monitorrev);
 len = snprintf(buf, PAGE_SIZE, "%d.%d-%d[%d]\n",
   tmp >> 24, (tmp >> 16) & 0xff, tmp & 0xff,
   le32_to_cpu(dev->adapter_info.monitorbuild));
 return len;
}
