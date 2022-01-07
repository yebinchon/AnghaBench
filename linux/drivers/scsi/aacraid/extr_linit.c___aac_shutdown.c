
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fib {int event_wait; TYPE_3__* hw_fib_va; } ;
struct aac_dev {int adapter_shutdown; int max_msix; TYPE_4__* pdev; scalar_t__ msi; struct aac_dev* aac_msix; int * thread; struct fib* fibs; TYPE_1__* scsi_host_ptr; scalar_t__ aif_thread; int ioctl_mutex; } ;
struct TYPE_10__ {int irq; } ;
struct TYPE_8__ {int XferState; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
struct TYPE_7__ {int can_queue; } ;


 int AAC_NUM_MGT_FIB ;
 int Async ;
 int NoResponseExpected ;
 int ResponseExpected ;
 int aac_adapter_disable_int (struct aac_dev*) ;
 scalar_t__ aac_is_src (struct aac_dev*) ;
 int aac_send_shutdown (struct aac_dev*) ;
 int complete (int *) ;
 int cpu_to_le32 (int) ;
 int free_irq (int ,struct aac_dev*) ;
 int kthread_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_disable_msi (TYPE_4__*) ;
 int pci_disable_msix (TYPE_4__*) ;
 int pci_irq_vector (TYPE_4__*,int) ;

__attribute__((used)) static void __aac_shutdown(struct aac_dev * aac)
{
 int i;

 mutex_lock(&aac->ioctl_mutex);
 aac->adapter_shutdown = 1;
 mutex_unlock(&aac->ioctl_mutex);

 if (aac->aif_thread) {
  int i;

  for (i = 0; i < (aac->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB); i++) {
   struct fib *fib = &aac->fibs[i];
   if (!(fib->hw_fib_va->header.XferState & cpu_to_le32(NoResponseExpected | Async)) &&
       (fib->hw_fib_va->header.XferState & cpu_to_le32(ResponseExpected)))
    complete(&fib->event_wait);
  }
  kthread_stop(aac->thread);
  aac->thread = ((void*)0);
 }

 aac_send_shutdown(aac);

 aac_adapter_disable_int(aac);

 if (aac_is_src(aac)) {
  if (aac->max_msix > 1) {
   for (i = 0; i < aac->max_msix; i++) {
    free_irq(pci_irq_vector(aac->pdev, i),
      &(aac->aac_msix[i]));
   }
  } else {
   free_irq(aac->pdev->irq,
     &(aac->aac_msix[0]));
  }
 } else {
  free_irq(aac->pdev->irq, aac);
 }
 if (aac->msi)
  pci_disable_msi(aac->pdev);
 else if (aac->max_msix > 1)
  pci_disable_msix(aac->pdev);
}
