
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_card {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct ap_device {TYPE_1__ device; } ;
struct ap_card {int functions; struct zcrypt_card* private; } ;


 int AP_FUNC_COPRO ;
 scalar_t__ ap_test_bit (int *,int ) ;
 int cca_card_attr_group ;
 int sysfs_remove_group (int *,int *) ;
 struct ap_card* to_ap_card (TYPE_1__*) ;
 int zcrypt_card_unregister (struct zcrypt_card*) ;

__attribute__((used)) static void zcrypt_cex4_card_remove(struct ap_device *ap_dev)
{
 struct ap_card *ac = to_ap_card(&ap_dev->device);
 struct zcrypt_card *zc = ac->private;

 if (ap_test_bit(&ac->functions, AP_FUNC_COPRO))
  sysfs_remove_group(&ap_dev->device.kobj, &cca_card_attr_group);
 if (zc)
  zcrypt_card_unregister(zc);
}
