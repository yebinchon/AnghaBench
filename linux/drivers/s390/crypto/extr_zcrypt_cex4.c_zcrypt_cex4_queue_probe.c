
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zcrypt_queue {int online; int reply; int load; struct ap_queue* queue; void* ops; } ;
struct ap_queue {TYPE_1__* card; struct zcrypt_queue* private; int request_timeout; } ;
struct TYPE_4__ {int kobj; } ;
struct ap_device {TYPE_2__ device; } ;
struct TYPE_3__ {int functions; } ;


 int AP_FUNC_ACCEL ;
 int AP_FUNC_COPRO ;
 int AP_FUNC_EP11 ;
 int CEX4A_MAX_MESSAGE_SIZE ;
 int CEX4C_MAX_MESSAGE_SIZE ;
 int CEX4_CLEANUP_TIME ;
 int ENODEV ;
 int ENOMEM ;
 int MSGTYPE06_NAME ;
 int MSGTYPE06_VARIANT_DEFAULT ;
 int MSGTYPE06_VARIANT_EP11 ;
 int MSGTYPE50_NAME ;
 int MSGTYPE50_VARIANT_DEFAULT ;
 int ap_queue_init_reply (struct ap_queue*,int *) ;
 scalar_t__ ap_test_bit (int *,int ) ;
 int atomic_set (int *,int ) ;
 int cca_queue_attr_group ;
 int sysfs_create_group (int *,int *) ;
 struct ap_queue* to_ap_queue (TYPE_2__*) ;
 void* zcrypt_msgtype (int ,int ) ;
 struct zcrypt_queue* zcrypt_queue_alloc (int ) ;
 int zcrypt_queue_free (struct zcrypt_queue*) ;
 int zcrypt_queue_register (struct zcrypt_queue*) ;
 int zcrypt_queue_unregister (struct zcrypt_queue*) ;

__attribute__((used)) static int zcrypt_cex4_queue_probe(struct ap_device *ap_dev)
{
 struct ap_queue *aq = to_ap_queue(&ap_dev->device);
 struct zcrypt_queue *zq;
 int rc;

 if (ap_test_bit(&aq->card->functions, AP_FUNC_ACCEL)) {
  zq = zcrypt_queue_alloc(CEX4A_MAX_MESSAGE_SIZE);
  if (!zq)
   return -ENOMEM;
  zq->ops = zcrypt_msgtype(MSGTYPE50_NAME,
      MSGTYPE50_VARIANT_DEFAULT);
 } else if (ap_test_bit(&aq->card->functions, AP_FUNC_COPRO)) {
  zq = zcrypt_queue_alloc(CEX4C_MAX_MESSAGE_SIZE);
  if (!zq)
   return -ENOMEM;
  zq->ops = zcrypt_msgtype(MSGTYPE06_NAME,
      MSGTYPE06_VARIANT_DEFAULT);
 } else if (ap_test_bit(&aq->card->functions, AP_FUNC_EP11)) {
  zq = zcrypt_queue_alloc(CEX4C_MAX_MESSAGE_SIZE);
  if (!zq)
   return -ENOMEM;
  zq->ops = zcrypt_msgtype(MSGTYPE06_NAME,
      MSGTYPE06_VARIANT_EP11);
 } else {
  return -ENODEV;
 }

 zq->queue = aq;
 zq->online = 1;
 atomic_set(&zq->load, 0);
 ap_queue_init_reply(aq, &zq->reply);
 aq->request_timeout = CEX4_CLEANUP_TIME,
 aq->private = zq;
 rc = zcrypt_queue_register(zq);
 if (rc) {
  aq->private = ((void*)0);
  zcrypt_queue_free(zq);
  goto out;
 }

 if (ap_test_bit(&aq->card->functions, AP_FUNC_COPRO)) {
  rc = sysfs_create_group(&ap_dev->device.kobj,
     &cca_queue_attr_group);
  if (rc)
   zcrypt_queue_unregister(zq);
 }

out:
 return rc;
}
