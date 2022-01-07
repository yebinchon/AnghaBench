
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct adapter_reply_queue {int list; int name; int busy; int msix_index; struct MPT3SAS_ADAPTER* ioc; } ;
struct MPT3SAS_ADAPTER {char* driver_name; int id; int reply_queue_list; scalar_t__ msix_enable; struct pci_dev* pdev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int MPT_NAME_LENGTH ;
 int _base_interrupt ;
 int atomic_set (int *,int ) ;
 int ioc_err (struct MPT3SAS_ADAPTER*,char*,int) ;
 int kfree (struct adapter_reply_queue*) ;
 struct adapter_reply_queue* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pr_err (char*,int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct adapter_reply_queue*) ;
 int snprintf (int ,int ,char*,char*,int,...) ;

__attribute__((used)) static int
_base_request_irq(struct MPT3SAS_ADAPTER *ioc, u8 index)
{
 struct pci_dev *pdev = ioc->pdev;
 struct adapter_reply_queue *reply_q;
 int r;

 reply_q = kzalloc(sizeof(struct adapter_reply_queue), GFP_KERNEL);
 if (!reply_q) {
  ioc_err(ioc, "unable to allocate memory %zu!\n",
   sizeof(struct adapter_reply_queue));
  return -ENOMEM;
 }
 reply_q->ioc = ioc;
 reply_q->msix_index = index;

 atomic_set(&reply_q->busy, 0);
 if (ioc->msix_enable)
  snprintf(reply_q->name, MPT_NAME_LENGTH, "%s%d-msix%d",
      ioc->driver_name, ioc->id, index);
 else
  snprintf(reply_q->name, MPT_NAME_LENGTH, "%s%d",
      ioc->driver_name, ioc->id);
 r = request_irq(pci_irq_vector(pdev, index), _base_interrupt,
   IRQF_SHARED, reply_q->name, reply_q);
 if (r) {
  pr_err("%s: unable to allocate interrupt %d!\n",
         reply_q->name, pci_irq_vector(pdev, index));
  kfree(reply_q);
  return -EBUSY;
 }

 INIT_LIST_HEAD(&reply_q->list);
 list_add_tail(&reply_q->list, &ioc->reply_queue_list);
 return 0;
}
