
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int first_minor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct tape_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
tape_first_minor_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct tape_device *tdev;

 tdev = dev_get_drvdata(dev);
 return scnprintf(buf, PAGE_SIZE, "%i\n", tdev->first_minor);
}
