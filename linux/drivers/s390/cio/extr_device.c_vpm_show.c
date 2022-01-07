
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int vpm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static ssize_t vpm_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct subchannel *sch = to_subchannel(dev);

 return sprintf(buf, "%02x\n", sch->vpm);
}
