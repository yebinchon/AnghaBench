
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst; } ;
struct rpmsg_eptdev {TYPE_1__ chinfo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct rpmsg_eptdev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t dst_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct rpmsg_eptdev *eptdev = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", eptdev->chinfo.dst);
}
