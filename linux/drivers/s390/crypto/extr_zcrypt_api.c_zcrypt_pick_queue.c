
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zcrypt_queue {TYPE_4__* queue; int request_count; int load; } ;
struct zcrypt_card {int load; } ;
struct module {int dummy; } ;
struct TYPE_6__ {TYPE_3__* drv; int device; } ;
struct TYPE_8__ {TYPE_2__ ap_dev; } ;
struct TYPE_5__ {struct module* owner; } ;
struct TYPE_7__ {TYPE_1__ driver; } ;


 int atomic_add (unsigned int,int *) ;
 int get_device (int *) ;
 int try_module_get (struct module*) ;
 int zcrypt_queue_get (struct zcrypt_queue*) ;

__attribute__((used)) static inline struct zcrypt_queue *zcrypt_pick_queue(struct zcrypt_card *zc,
           struct zcrypt_queue *zq,
           struct module **pmod,
           unsigned int weight)
{
 if (!zq || !try_module_get(zq->queue->ap_dev.drv->driver.owner))
  return ((void*)0);
 zcrypt_queue_get(zq);
 get_device(&zq->queue->ap_dev.device);
 atomic_add(weight, &zc->load);
 atomic_add(weight, &zq->load);
 zq->request_count++;
 *pmod = zq->queue->ap_dev.drv->driver.owner;
 return zq;
}
