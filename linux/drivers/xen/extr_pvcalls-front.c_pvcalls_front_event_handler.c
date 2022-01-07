
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct xenbus_device {int dev; } ;
struct TYPE_8__ {scalar_t__ id; } ;
struct TYPE_9__ {TYPE_1__ poll; } ;
struct xen_pvcalls_response {int req_id; scalar_t__ cmd; TYPE_2__ u; } ;
struct TYPE_10__ {int flags; } ;
struct sock_mapping {TYPE_3__ passive; } ;
struct TYPE_12__ {int rsp_cons; } ;
struct pvcalls_bedata {int inflight_req; TYPE_5__ ring; TYPE_4__* rsp; } ;
typedef int irqreturn_t ;
struct TYPE_11__ {int req_id; } ;


 int IRQ_HANDLED ;
 int PVCALLS_FLAG_POLL_INFLIGHT ;
 int PVCALLS_FLAG_POLL_RET ;
 scalar_t__ PVCALLS_POLL ;
 int RING_FINAL_CHECK_FOR_RESPONSES (TYPE_5__*,int) ;
 struct xen_pvcalls_response* RING_GET_RESPONSE (TYPE_5__*,int ) ;
 scalar_t__ RING_HAS_UNCONSUMED_RESPONSES (TYPE_5__*) ;
 int clear_bit (int ,void*) ;
 struct pvcalls_bedata* dev_get_drvdata (int *) ;
 int memcpy (int *,int *,int) ;
 int pvcalls_enter () ;
 int pvcalls_exit () ;
 int set_bit (int ,void*) ;
 int smp_wmb () ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t pvcalls_front_event_handler(int irq, void *dev_id)
{
 struct xenbus_device *dev = dev_id;
 struct pvcalls_bedata *bedata;
 struct xen_pvcalls_response *rsp;
 uint8_t *src, *dst;
 int req_id = 0, more = 0, done = 0;

 if (dev == ((void*)0))
  return IRQ_HANDLED;

 pvcalls_enter();
 bedata = dev_get_drvdata(&dev->dev);
 if (bedata == ((void*)0)) {
  pvcalls_exit();
  return IRQ_HANDLED;
 }

again:
 while (RING_HAS_UNCONSUMED_RESPONSES(&bedata->ring)) {
  rsp = RING_GET_RESPONSE(&bedata->ring, bedata->ring.rsp_cons);

  req_id = rsp->req_id;
  if (rsp->cmd == PVCALLS_POLL) {
   struct sock_mapping *map = (struct sock_mapping *)(uintptr_t)
         rsp->u.poll.id;

   clear_bit(PVCALLS_FLAG_POLL_INFLIGHT,
      (void *)&map->passive.flags);





   smp_wmb();
   set_bit(PVCALLS_FLAG_POLL_RET,
    (void *)&map->passive.flags);
  } else {
   dst = (uint8_t *)&bedata->rsp[req_id] +
         sizeof(rsp->req_id);
   src = (uint8_t *)rsp + sizeof(rsp->req_id);
   memcpy(dst, src, sizeof(*rsp) - sizeof(rsp->req_id));




   smp_wmb();
   bedata->rsp[req_id].req_id = req_id;
  }

  done = 1;
  bedata->ring.rsp_cons++;
 }

 RING_FINAL_CHECK_FOR_RESPONSES(&bedata->ring, more);
 if (more)
  goto again;
 if (done)
  wake_up(&bedata->inflight_req);
 pvcalls_exit();
 return IRQ_HANDLED;
}
