
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_vring {int vq; } ;
struct rproc {int notifyids; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int dev_dbg (int *,char*,int) ;
 struct rproc_vring* idr_find (int *,int) ;
 int vring_interrupt (int ,int ) ;

irqreturn_t rproc_vq_interrupt(struct rproc *rproc, int notifyid)
{
 struct rproc_vring *rvring;

 dev_dbg(&rproc->dev, "vq index %d is interrupted\n", notifyid);

 rvring = idr_find(&rproc->notifyids, notifyid);
 if (!rvring || !rvring->vq)
  return IRQ_NONE;

 return vring_interrupt(0, rvring->vq);
}
