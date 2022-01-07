
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aac_dev {scalar_t__ in_reset; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int EBUSY ;
 int PAGE_SIZE ;
 int aac_adapter_check_health (struct aac_dev*) ;
 TYPE_1__* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t aac_show_reset_adapter(struct device *device,
          struct device_attribute *attr,
          char *buf)
{
 struct aac_dev *dev = (struct aac_dev*)class_to_shost(device)->hostdata;
 int len, tmp;

 tmp = aac_adapter_check_health(dev);
 if ((tmp == 0) && dev->in_reset)
  tmp = -EBUSY;
 len = snprintf(buf, PAGE_SIZE, "0x%x\n", tmp);
 return len;
}
