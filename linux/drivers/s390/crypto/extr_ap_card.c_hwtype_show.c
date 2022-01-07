
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int device_type; } ;
struct ap_card {TYPE_1__ ap_dev; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct ap_card* to_ap_card (struct device*) ;

__attribute__((used)) static ssize_t hwtype_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct ap_card *ac = to_ap_card(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", ac->ap_dev.device_type);
}
