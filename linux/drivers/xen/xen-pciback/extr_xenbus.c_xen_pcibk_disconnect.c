
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_device {scalar_t__ evtchn_irq; int dev_lock; int * sh_info; int xdev; int op_work; } ;


 scalar_t__ INVALID_EVTCHN_IRQ ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unbind_from_irqhandler (scalar_t__,struct xen_pcibk_device*) ;
 int xenbus_unmap_ring_vfree (int ,int *) ;

__attribute__((used)) static void xen_pcibk_disconnect(struct xen_pcibk_device *pdev)
{
 mutex_lock(&pdev->dev_lock);

 if (pdev->evtchn_irq != INVALID_EVTCHN_IRQ) {
  unbind_from_irqhandler(pdev->evtchn_irq, pdev);
  pdev->evtchn_irq = INVALID_EVTCHN_IRQ;
 }




 flush_work(&pdev->op_work);

 if (pdev->sh_info != ((void*)0)) {
  xenbus_unmap_ring_vfree(pdev->xdev, pdev->sh_info);
  pdev->sh_info = ((void*)0);
 }
 mutex_unlock(&pdev->dev_lock);
}
