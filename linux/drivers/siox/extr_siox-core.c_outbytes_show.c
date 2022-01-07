
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_device {int outbytes; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct siox_device* to_siox_device (struct device*) ;

__attribute__((used)) static ssize_t outbytes_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct siox_device *sdev = to_siox_device(dev);

 return sprintf(buf, "%zu\n", sdev->outbytes);
}
