
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_card {int online; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct zcrypt_card* private; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_1__* to_ap_card (struct device*) ;

__attribute__((used)) static ssize_t online_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct zcrypt_card *zc = to_ap_card(dev)->private;

 return snprintf(buf, PAGE_SIZE, "%d\n", zc->online);
}
