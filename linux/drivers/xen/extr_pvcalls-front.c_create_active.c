
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* in; } ;
struct TYPE_9__ {int irq; int out_mutex; int in_mutex; TYPE_2__* ring; void* ref; TYPE_1__ data; int inflight_conn_req; } ;
struct sock_mapping {int active_socket; TYPE_3__ active; } ;
struct TYPE_10__ {int otherend_id; } ;
struct TYPE_8__ {void** ref; } ;


 int ENOMEM ;
 int PVCALLS_RING_ORDER ;
 int bind_evtchn_to_irqhandler (int,int ,int ,char*,struct sock_mapping*) ;
 void* gnttab_grant_foreign_access (int ,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int pfn_to_gfn (scalar_t__) ;
 int pvcalls_front_conn_handler ;
 TYPE_4__* pvcalls_front_dev ;
 scalar_t__ virt_to_pfn (void*) ;
 int xenbus_alloc_evtchn (TYPE_4__*,int*) ;
 int xenbus_free_evtchn (TYPE_4__*,int) ;

__attribute__((used)) static int create_active(struct sock_mapping *map, int *evtchn)
{
 void *bytes;
 int ret = -ENOMEM, irq = -1, i;

 *evtchn = -1;
 init_waitqueue_head(&map->active.inflight_conn_req);

 bytes = map->active.data.in;
 for (i = 0; i < (1 << PVCALLS_RING_ORDER); i++)
  map->active.ring->ref[i] = gnttab_grant_foreign_access(
   pvcalls_front_dev->otherend_id,
   pfn_to_gfn(virt_to_pfn(bytes) + i), 0);

 map->active.ref = gnttab_grant_foreign_access(
  pvcalls_front_dev->otherend_id,
  pfn_to_gfn(virt_to_pfn((void *)map->active.ring)), 0);

 ret = xenbus_alloc_evtchn(pvcalls_front_dev, evtchn);
 if (ret)
  goto out_error;
 irq = bind_evtchn_to_irqhandler(*evtchn, pvcalls_front_conn_handler,
     0, "pvcalls-frontend", map);
 if (irq < 0) {
  ret = irq;
  goto out_error;
 }

 map->active.irq = irq;
 map->active_socket = 1;
 mutex_init(&map->active.in_mutex);
 mutex_init(&map->active.out_mutex);

 return 0;

out_error:
 if (*evtchn >= 0)
  xenbus_free_evtchn(pvcalls_front_dev, *evtchn);
 return ret;
}
