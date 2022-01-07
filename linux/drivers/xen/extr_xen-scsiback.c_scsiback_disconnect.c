
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sring; } ;
struct vscsibk_info {TYPE_1__ ring; int dev; scalar_t__ irq; int nr_unreplied_reqs; int waiting_to_free; } ;


 scalar_t__ atomic_read (int *) ;
 int unbind_from_irqhandler (scalar_t__,struct vscsibk_info*) ;
 int wait_event (int ,int) ;
 int xenbus_unmap_ring_vfree (int ,int ) ;

__attribute__((used)) static void scsiback_disconnect(struct vscsibk_info *info)
{
 wait_event(info->waiting_to_free,
  atomic_read(&info->nr_unreplied_reqs) == 0);

 unbind_from_irqhandler(info->irq, info);
 info->irq = 0;
 xenbus_unmap_ring_vfree(info->dev, info->ring.sring);
}
