
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xen_pci_op {int err; } ;
struct pcifront_device {unsigned int irq; int sh_info_lock; TYPE_2__* xdev; TYPE_1__* sh_info; int evtchn; } ;
typedef int s64 ;
typedef int evtchn_port_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int flags; struct xen_pci_op op; } ;


 int HZ ;
 scalar_t__ NSEC_PER_SEC ;
 int XEN_PCI_ERR_dev_not_found ;
 int _XEN_PCIB_active ;
 int _XEN_PCIF_active ;
 int clear_bit (int ,unsigned long*) ;
 int dev_err (int *,char*) ;
 scalar_t__ jiffies ;
 int ktime_get_ns () ;
 int memcpy (struct xen_pci_op*,struct xen_pci_op*,int) ;
 int notify_remote_via_evtchn (int ) ;
 int schedule_pcifront_aer_op (struct pcifront_device*) ;
 int set_bit (int ,unsigned long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 int wmb () ;
 int xen_clear_irq_pending (unsigned int) ;
 int xen_poll_irq_timeout (unsigned int,scalar_t__) ;

__attribute__((used)) static int do_pci_op(struct pcifront_device *pdev, struct xen_pci_op *op)
{
 int err = 0;
 struct xen_pci_op *active_op = &pdev->sh_info->op;
 unsigned long irq_flags;
 evtchn_port_t port = pdev->evtchn;
 unsigned irq = pdev->irq;
 s64 ns, ns_timeout;

 spin_lock_irqsave(&pdev->sh_info_lock, irq_flags);

 memcpy(active_op, op, sizeof(struct xen_pci_op));


 wmb();
 set_bit(_XEN_PCIF_active, (unsigned long *)&pdev->sh_info->flags);
 notify_remote_via_evtchn(port);







 ns_timeout = ktime_get_ns() + 2 * (s64)NSEC_PER_SEC;

 xen_clear_irq_pending(irq);

 while (test_bit(_XEN_PCIF_active,
   (unsigned long *)&pdev->sh_info->flags)) {
  xen_poll_irq_timeout(irq, jiffies + 3*HZ);
  xen_clear_irq_pending(irq);
  ns = ktime_get_ns();
  if (ns > ns_timeout) {
   dev_err(&pdev->xdev->dev,
    "pciback not responding!!!\n");
   clear_bit(_XEN_PCIF_active,
      (unsigned long *)&pdev->sh_info->flags);
   err = XEN_PCI_ERR_dev_not_found;
   goto out;
  }
 }






 if (test_bit(_XEN_PCIB_active,
   (unsigned long *)&pdev->sh_info->flags)) {
  dev_err(&pdev->xdev->dev,
   "schedule aer pcifront service\n");
  schedule_pcifront_aer_op(pdev);
 }

 memcpy(op, active_op, sizeof(struct xen_pci_op));

 err = op->err;
out:
 spin_unlock_irqrestore(&pdev->sh_info_lock, irq_flags);
 return err;
}
