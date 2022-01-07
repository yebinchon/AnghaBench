
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_card {int functions; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct ap_card* to_ap_card (struct device*) ;

__attribute__((used)) static ssize_t ap_functions_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct ap_card *ac = to_ap_card(dev);

 return snprintf(buf, PAGE_SIZE, "0x%08X\n", ac->functions);
}
