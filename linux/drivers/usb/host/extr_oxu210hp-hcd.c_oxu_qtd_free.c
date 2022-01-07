
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {int mem_lock; scalar_t__* qtd_used; TYPE_1__* mem; } ;
struct ehci_qtd {scalar_t__ buffer; } ;
struct TYPE_2__ {struct ehci_qtd* qtd_pool; } ;


 int oxu_buf_free (struct oxu_hcd*,struct ehci_qtd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void oxu_qtd_free(struct oxu_hcd *oxu, struct ehci_qtd *qtd)
{
 int index;

 if (qtd->buffer)
  oxu_buf_free(oxu, qtd);

 spin_lock(&oxu->mem_lock);

 index = qtd - &oxu->mem->qtd_pool[0];
 oxu->qtd_used[index] = 0;

 spin_unlock(&oxu->mem_lock);
}
