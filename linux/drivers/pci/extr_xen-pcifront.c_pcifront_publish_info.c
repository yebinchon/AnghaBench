
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct pcifront_device {int irq; TYPE_1__* xdev; int evtchn; int gnt_ref; int sh_info; } ;
typedef int grant_ref_t ;
struct TYPE_5__ {int dev; int nodename; } ;


 int EAGAIN ;
 int XEN_PCI_MAGIC ;
 int XenbusStateInitialised ;
 int bind_evtchn_to_irqhandler (int ,int ,int ,char*,struct pcifront_device*) ;
 int dev_dbg (int *,char*) ;
 int pcifront_handler_aer ;
 int xenbus_alloc_evtchn (TYPE_1__*,int *) ;
 int xenbus_dev_fatal (TYPE_1__*,int,char*) ;
 int xenbus_grant_ring (TYPE_1__*,int ,int,int *) ;
 int xenbus_printf (struct xenbus_transaction,int ,char*,char*,...) ;
 int xenbus_switch_state (TYPE_1__*,int ) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;

__attribute__((used)) static int pcifront_publish_info(struct pcifront_device *pdev)
{
 int err = 0;
 struct xenbus_transaction trans;
 grant_ref_t gref;

 err = xenbus_grant_ring(pdev->xdev, pdev->sh_info, 1, &gref);
 if (err < 0)
  goto out;

 pdev->gnt_ref = gref;

 err = xenbus_alloc_evtchn(pdev->xdev, &pdev->evtchn);
 if (err)
  goto out;

 err = bind_evtchn_to_irqhandler(pdev->evtchn, pcifront_handler_aer,
  0, "pcifront", pdev);

 if (err < 0)
  return err;

 pdev->irq = err;

do_publish:
 err = xenbus_transaction_start(&trans);
 if (err) {
  xenbus_dev_fatal(pdev->xdev, err,
     "Error writing configuration for backend "
     "(start transaction)");
  goto out;
 }

 err = xenbus_printf(trans, pdev->xdev->nodename,
       "pci-op-ref", "%u", pdev->gnt_ref);
 if (!err)
  err = xenbus_printf(trans, pdev->xdev->nodename,
        "event-channel", "%u", pdev->evtchn);
 if (!err)
  err = xenbus_printf(trans, pdev->xdev->nodename,
        "magic", XEN_PCI_MAGIC);

 if (err) {
  xenbus_transaction_end(trans, 1);
  xenbus_dev_fatal(pdev->xdev, err,
     "Error writing configuration for backend");
  goto out;
 } else {
  err = xenbus_transaction_end(trans, 0);
  if (err == -EAGAIN)
   goto do_publish;
  else if (err) {
   xenbus_dev_fatal(pdev->xdev, err,
      "Error completing transaction "
      "for backend");
   goto out;
  }
 }

 xenbus_switch_state(pdev->xdev, XenbusStateInitialised);

 dev_dbg(&pdev->xdev->dev, "publishing successful!\n");

out:
 return err;
}
