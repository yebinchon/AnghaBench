
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zcrypt_queue {int dummy; } ;
struct ap_queue {TYPE_1__* card; struct zcrypt_queue* private; } ;
struct TYPE_4__ {int kobj; } ;
struct ap_device {TYPE_2__ device; } ;
struct TYPE_3__ {int functions; } ;


 int AP_FUNC_COPRO ;
 scalar_t__ ap_test_bit (int *,int ) ;
 int cca_queue_attr_group ;
 int sysfs_remove_group (int *,int *) ;
 struct ap_queue* to_ap_queue (TYPE_2__*) ;
 int zcrypt_queue_unregister (struct zcrypt_queue*) ;

__attribute__((used)) static void zcrypt_cex4_queue_remove(struct ap_device *ap_dev)
{
 struct ap_queue *aq = to_ap_queue(&ap_dev->device);
 struct zcrypt_queue *zq = aq->private;

 if (ap_test_bit(&aq->card->functions, AP_FUNC_COPRO))
  sysfs_remove_group(&ap_dev->device.kobj, &cca_queue_attr_group);
 if (zq)
  zcrypt_queue_unregister(zq);
}
