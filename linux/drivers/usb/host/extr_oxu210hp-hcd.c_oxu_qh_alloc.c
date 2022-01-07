
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {int* qh_used; int mem_lock; TYPE_1__* mem; } ;
struct ehci_qh {int * dummy; int qtd_list; int qh_dma; struct oxu_hcd* oxu; int kref; } ;
struct TYPE_2__ {int * qh_pool; } ;


 int INIT_LIST_HEAD (int *) ;
 int QHEAD_NUM ;
 int * ehci_qtd_alloc (struct oxu_hcd*) ;
 int kref_init (int *) ;
 int memset (struct ehci_qh*,int ,int) ;
 int oxu_dbg (struct oxu_hcd*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virt_to_phys (struct ehci_qh*) ;

__attribute__((used)) static struct ehci_qh *oxu_qh_alloc(struct oxu_hcd *oxu)
{
 int i;
 struct ehci_qh *qh = ((void*)0);

 spin_lock(&oxu->mem_lock);

 for (i = 0; i < QHEAD_NUM; i++)
  if (!oxu->qh_used[i])
   break;

 if (i < QHEAD_NUM) {
  qh = (struct ehci_qh *) &oxu->mem->qh_pool[i];
  memset(qh, 0, sizeof *qh);

  kref_init(&qh->kref);
  qh->oxu = oxu;
  qh->qh_dma = virt_to_phys(qh);
  INIT_LIST_HEAD(&qh->qtd_list);


  qh->dummy = ehci_qtd_alloc(oxu);
  if (qh->dummy == ((void*)0)) {
   oxu_dbg(oxu, "no dummy td\n");
   oxu->qh_used[i] = 0;
   qh = ((void*)0);
   goto unlock;
  }

  oxu->qh_used[i] = 1;
 }
unlock:
 spin_unlock(&oxu->mem_lock);

 return qh;
}
