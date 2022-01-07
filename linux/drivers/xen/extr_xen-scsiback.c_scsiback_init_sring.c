
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsiif_sring {int dummy; } ;
struct vscsibk_info {int irq; int dev; int domid; int ring; } ;
typedef int grant_ref_t ;
typedef int evtchn_port_t ;


 int BACK_RING_INIT (int *,struct vscsiif_sring*,int ) ;
 int IRQF_ONESHOT ;
 int PAGE_SIZE ;
 int bind_interdomain_evtchn_to_irq (int ,int ) ;
 int request_threaded_irq (int,int *,int ,int ,char*,struct vscsibk_info*) ;
 int scsiback_irq_fn ;
 int unbind_from_irqhandler (int,struct vscsibk_info*) ;
 int xenbus_map_ring_valloc (int ,int *,int,void**) ;
 int xenbus_unmap_ring_vfree (int ,void*) ;

__attribute__((used)) static int scsiback_init_sring(struct vscsibk_info *info, grant_ref_t ring_ref,
   evtchn_port_t evtchn)
{
 void *area;
 struct vscsiif_sring *sring;
 int err;

 if (info->irq)
  return -1;

 err = xenbus_map_ring_valloc(info->dev, &ring_ref, 1, &area);
 if (err)
  return err;

 sring = (struct vscsiif_sring *)area;
 BACK_RING_INIT(&info->ring, sring, PAGE_SIZE);

 err = bind_interdomain_evtchn_to_irq(info->domid, evtchn);
 if (err < 0)
  goto unmap_page;

 info->irq = err;

 err = request_threaded_irq(info->irq, ((void*)0), scsiback_irq_fn,
       IRQF_ONESHOT, "vscsiif-backend", info);
 if (err)
  goto free_irq;

 return 0;

free_irq:
 unbind_from_irqhandler(info->irq, info);
 info->irq = 0;
unmap_page:
 xenbus_unmap_ring_vfree(info->dev, area);

 return err;
}
