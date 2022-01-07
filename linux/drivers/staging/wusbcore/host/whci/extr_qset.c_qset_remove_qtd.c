
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc_qset {size_t td_start; int ntds; TYPE_1__* qtd; } ;
struct whc {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 size_t WHCI_QSET_TD_MAX ;

__attribute__((used)) static void qset_remove_qtd(struct whc *whc, struct whc_qset *qset)
{
 qset->qtd[qset->td_start].status = 0;

 if (++qset->td_start >= WHCI_QSET_TD_MAX)
  qset->td_start = 0;
 qset->ntds--;
}
