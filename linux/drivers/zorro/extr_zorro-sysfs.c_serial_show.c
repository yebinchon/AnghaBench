
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int er_SerialNumber; } ;
struct zorro_dev {TYPE_1__ rom; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int be32_to_cpu (int ) ;
 int sprintf (char*,char*,int) ;
 struct zorro_dev* to_zorro_dev (struct device*) ;

__attribute__((used)) static ssize_t serial_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct zorro_dev *z;

 z = to_zorro_dev(dev);
 return sprintf(buf, "0x%08x\n", be32_to_cpu(z->rom.er_SerialNumber));
}
