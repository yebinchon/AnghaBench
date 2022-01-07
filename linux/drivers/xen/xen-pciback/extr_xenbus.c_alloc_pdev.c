
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct xen_pcibk_device {int op_work; scalar_t__ be_watching; int evtchn_irq; int * sh_info; int dev_lock; struct xenbus_device* xdev; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int INVALID_EVTCHN_IRQ ;
 int dev_dbg (int *,char*,struct xen_pcibk_device*) ;
 int dev_set_drvdata (int *,struct xen_pcibk_device*) ;
 int kfree (struct xen_pcibk_device*) ;
 struct xen_pcibk_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int xen_pcibk_do_op ;
 scalar_t__ xen_pcibk_init_devices (struct xen_pcibk_device*) ;

__attribute__((used)) static struct xen_pcibk_device *alloc_pdev(struct xenbus_device *xdev)
{
 struct xen_pcibk_device *pdev;

 pdev = kzalloc(sizeof(struct xen_pcibk_device), GFP_KERNEL);
 if (pdev == ((void*)0))
  goto out;
 dev_dbg(&xdev->dev, "allocated pdev @ 0x%p\n", pdev);

 pdev->xdev = xdev;

 mutex_init(&pdev->dev_lock);

 pdev->sh_info = ((void*)0);
 pdev->evtchn_irq = INVALID_EVTCHN_IRQ;
 pdev->be_watching = 0;

 INIT_WORK(&pdev->op_work, xen_pcibk_do_op);

 if (xen_pcibk_init_devices(pdev)) {
  kfree(pdev);
  pdev = ((void*)0);
 }

 dev_set_drvdata(&xdev->dev, pdev);

out:
 return pdev;
}
