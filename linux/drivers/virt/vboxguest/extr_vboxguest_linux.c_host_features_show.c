
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_dev {int host_features; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct vbg_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t host_features_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct vbg_dev *gdev = dev_get_drvdata(dev);

 return sprintf(buf, "%#x\n", gdev->host_features);
}
