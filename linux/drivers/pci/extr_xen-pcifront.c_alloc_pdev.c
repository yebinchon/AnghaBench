
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct xen_pci_sharedinfo {scalar_t__ flags; } ;
struct pcifront_device {int irq; struct xen_pci_sharedinfo* sh_info; int op_work; int gnt_ref; int evtchn; int sh_info_lock; int root_buses; struct xenbus_device* xdev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int INVALID_EVTCHN ;
 int INVALID_GRANT_REF ;
 int _XEN_PCIB_AERHANDLER ;
 scalar_t__ __get_free_page (int ) ;
 int dev_dbg (int *,char*,struct pcifront_device*,struct xen_pci_sharedinfo*) ;
 int dev_set_drvdata (int *,struct pcifront_device*) ;
 int kfree (struct pcifront_device*) ;
 struct pcifront_device* kzalloc (int,int ) ;
 int pcifront_do_aer ;
 int set_bit (int ,void*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct pcifront_device *alloc_pdev(struct xenbus_device *xdev)
{
 struct pcifront_device *pdev;

 pdev = kzalloc(sizeof(struct pcifront_device), GFP_KERNEL);
 if (pdev == ((void*)0))
  goto out;

 pdev->sh_info =
     (struct xen_pci_sharedinfo *)__get_free_page(GFP_KERNEL);
 if (pdev->sh_info == ((void*)0)) {
  kfree(pdev);
  pdev = ((void*)0);
  goto out;
 }
 pdev->sh_info->flags = 0;


 set_bit(_XEN_PCIB_AERHANDLER, (void *)&pdev->sh_info->flags);

 dev_set_drvdata(&xdev->dev, pdev);
 pdev->xdev = xdev;

 INIT_LIST_HEAD(&pdev->root_buses);

 spin_lock_init(&pdev->sh_info_lock);

 pdev->evtchn = INVALID_EVTCHN;
 pdev->gnt_ref = INVALID_GRANT_REF;
 pdev->irq = -1;

 INIT_WORK(&pdev->op_work, pcifront_do_aer);

 dev_dbg(&xdev->dev, "Allocated pdev @ 0x%p pdev->sh_info @ 0x%p\n",
  pdev, pdev->sh_info);
out:
 return pdev;
}
