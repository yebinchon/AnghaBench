
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zcrypt_queue {TYPE_2__* queue; int load; int request_count; } ;
struct zcrypt_card {int load; } ;
struct module {int dummy; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ ap_dev; } ;


 int atomic_sub (unsigned int,int *) ;
 int module_put (struct module*) ;
 int put_device (int *) ;
 int zcrypt_queue_put (struct zcrypt_queue*) ;

__attribute__((used)) static inline void zcrypt_drop_queue(struct zcrypt_card *zc,
         struct zcrypt_queue *zq,
         struct module *mod,
         unsigned int weight)
{
 zq->request_count--;
 atomic_sub(weight, &zc->load);
 atomic_sub(weight, &zq->load);
 put_device(&zq->queue->ap_dev.device);
 zcrypt_queue_put(zq);
 module_put(mod);
}
