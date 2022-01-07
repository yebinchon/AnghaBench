
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_queue {int online; int reply; int load; struct ap_queue* queue; int ops; } ;
struct ap_queue {struct zcrypt_queue* private; int request_timeout; } ;
struct ap_device {int device_type; int device; } ;




 int CEX2A_CLEANUP_TIME ;
 int CEX2A_MAX_RESPONSE_SIZE ;
 int CEX3A_MAX_RESPONSE_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int MSGTYPE50_NAME ;
 int MSGTYPE50_VARIANT_DEFAULT ;
 int ap_queue_init_reply (struct ap_queue*,int *) ;
 int atomic_set (int *,int ) ;
 struct ap_queue* to_ap_queue (int *) ;
 int zcrypt_msgtype (int ,int ) ;
 struct zcrypt_queue* zcrypt_queue_alloc (int ) ;
 int zcrypt_queue_free (struct zcrypt_queue*) ;
 int zcrypt_queue_register (struct zcrypt_queue*) ;

__attribute__((used)) static int zcrypt_cex2a_queue_probe(struct ap_device *ap_dev)
{
 struct ap_queue *aq = to_ap_queue(&ap_dev->device);
 struct zcrypt_queue *zq = ((void*)0);
 int rc;

 switch (ap_dev->device_type) {
 case 129:
  zq = zcrypt_queue_alloc(CEX2A_MAX_RESPONSE_SIZE);
  if (!zq)
   return -ENOMEM;
  break;
 case 128:
  zq = zcrypt_queue_alloc(CEX3A_MAX_RESPONSE_SIZE);
  if (!zq)
   return -ENOMEM;
  break;
 }
 if (!zq)
  return -ENODEV;
 zq->ops = zcrypt_msgtype(MSGTYPE50_NAME, MSGTYPE50_VARIANT_DEFAULT);
 zq->queue = aq;
 zq->online = 1;
 atomic_set(&zq->load, 0);
 ap_queue_init_reply(aq, &zq->reply);
 aq->request_timeout = CEX2A_CLEANUP_TIME,
 aq->private = zq;
 rc = zcrypt_queue_register(zq);
 if (rc) {
  aq->private = ((void*)0);
  zcrypt_queue_free(zq);
 }

 return rc;
}
