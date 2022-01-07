
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {int fan_boost_mode; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct asus_wmi* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t fan_boost_mode_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct asus_wmi *asus = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%d\n", asus->fan_boost_mode);
}
