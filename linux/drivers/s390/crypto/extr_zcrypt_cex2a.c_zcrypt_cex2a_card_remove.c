
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_card {int dummy; } ;
struct ap_device {int device; } ;
struct TYPE_2__ {struct zcrypt_card* private; } ;


 TYPE_1__* to_ap_card (int *) ;
 int zcrypt_card_unregister (struct zcrypt_card*) ;

__attribute__((used)) static void zcrypt_cex2a_card_remove(struct ap_device *ap_dev)
{
 struct zcrypt_card *zc = to_ap_card(&ap_dev->device)->private;

 if (zc)
  zcrypt_card_unregister(zc);
}
