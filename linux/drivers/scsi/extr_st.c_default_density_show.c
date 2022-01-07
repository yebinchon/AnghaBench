
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_modedef {scalar_t__ default_density; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct st_modedef* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,scalar_t__) ;

__attribute__((used)) static ssize_t
default_density_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct st_modedef *STm = dev_get_drvdata(dev);
 ssize_t l = 0;
 char *fmt;

 fmt = STm->default_density >= 0 ? "0x%02x\n" : "%d\n";
 l = snprintf(buf, PAGE_SIZE, fmt, STm->default_density);
 return l;
}
