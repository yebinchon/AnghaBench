
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_card {int online; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cca_info {char* serial; } ;
struct ap_card {int id; struct zcrypt_card* private; } ;
typedef int ssize_t ;
typedef int ci ;


 int PAGE_SIZE ;
 scalar_t__ ap_domain_index ;
 int cca_get_info (int ,scalar_t__,struct cca_info*,int ) ;
 int memset (struct cca_info*,int ,int) ;
 int snprintf (char*,int ,char*,char*) ;
 struct ap_card* to_ap_card (struct device*) ;

__attribute__((used)) static ssize_t serialnr_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct cca_info ci;
 struct ap_card *ac = to_ap_card(dev);
 struct zcrypt_card *zc = ac->private;

 memset(&ci, 0, sizeof(ci));

 if (ap_domain_index >= 0)
  cca_get_info(ac->id, ap_domain_index, &ci, zc->online);

 return snprintf(buf, PAGE_SIZE, "%s\n", ci.serial);
}
