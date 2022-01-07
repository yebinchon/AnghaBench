
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_uio_device {int core_num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct kpc_uio_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct kpc_uio_device *kudev = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", kudev->core_num);
}
