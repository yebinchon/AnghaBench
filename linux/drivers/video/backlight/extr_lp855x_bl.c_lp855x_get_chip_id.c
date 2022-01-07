
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp855x {int chipname; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct lp855x* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t lp855x_get_chip_id(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lp855x *lp = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%s\n", lp->chipname);
}
