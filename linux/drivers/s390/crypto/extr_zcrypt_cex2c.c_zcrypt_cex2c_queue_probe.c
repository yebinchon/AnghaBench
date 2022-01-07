
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_queue {int online; int reply; void* ops; int load; struct ap_queue* queue; } ;
struct ap_queue {struct zcrypt_queue* private; int request_timeout; } ;
struct ap_device {int device; } ;


 int CEX2C_CLEANUP_TIME ;
 int CEX2C_MAX_XCRB_MESSAGE_SIZE ;
 int ENOMEM ;
 int MSGTYPE06_NAME ;
 int MSGTYPE06_VARIANT_DEFAULT ;
 int MSGTYPE06_VARIANT_NORNG ;
 int ap_queue_init_reply (struct ap_queue*,int *) ;
 int atomic_set (int *,int ) ;
 struct ap_queue* to_ap_queue (int *) ;
 int zcrypt_cex2c_rng_supported (struct ap_queue*) ;
 void* zcrypt_msgtype (int ,int ) ;
 struct zcrypt_queue* zcrypt_queue_alloc (int ) ;
 int zcrypt_queue_free (struct zcrypt_queue*) ;
 int zcrypt_queue_register (struct zcrypt_queue*) ;

__attribute__((used)) static int zcrypt_cex2c_queue_probe(struct ap_device *ap_dev)
{
 struct ap_queue *aq = to_ap_queue(&ap_dev->device);
 struct zcrypt_queue *zq;
 int rc;

 zq = zcrypt_queue_alloc(CEX2C_MAX_XCRB_MESSAGE_SIZE);
 if (!zq)
  return -ENOMEM;
 zq->queue = aq;
 zq->online = 1;
 atomic_set(&zq->load, 0);
 rc = zcrypt_cex2c_rng_supported(aq);
 if (rc < 0) {
  zcrypt_queue_free(zq);
  return rc;
 }
 if (rc)
  zq->ops = zcrypt_msgtype(MSGTYPE06_NAME,
      MSGTYPE06_VARIANT_DEFAULT);
 else
  zq->ops = zcrypt_msgtype(MSGTYPE06_NAME,
      MSGTYPE06_VARIANT_NORNG);
 ap_queue_init_reply(aq, &zq->reply);
 aq->request_timeout = CEX2C_CLEANUP_TIME;
 aq->private = zq;
 rc = zcrypt_queue_register(zq);
 if (rc) {
  aq->private = ((void*)0);
  zcrypt_queue_free(zq);
 }
 return rc;
}
