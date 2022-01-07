
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int overlay; scalar_t__* scratch; scalar_t__ err_count; int link; } ;
struct whc_qset {int remove_complete; TYPE_1__ qh; scalar_t__ ntds; scalar_t__ td_end; scalar_t__ td_start; } ;
struct whc {int dummy; } ;


 int QH_LINK_NTDS (int) ;
 int QH_LINK_T ;
 int QH_STATUS_SEQ_MASK ;
 int cpu_to_le64 (int) ;
 int init_completion (int *) ;
 int memset (int *,int ,int) ;

void qset_clear(struct whc *whc, struct whc_qset *qset)
{
 qset->td_start = qset->td_end = qset->ntds = 0;

 qset->qh.link = cpu_to_le64(QH_LINK_NTDS(8) | QH_LINK_T);
 qset->qh.status = qset->qh.status & QH_STATUS_SEQ_MASK;
 qset->qh.err_count = 0;
 qset->qh.scratch[0] = 0;
 qset->qh.scratch[1] = 0;
 qset->qh.scratch[2] = 0;

 memset(&qset->qh.overlay, 0, sizeof(qset->qh.overlay));

 init_completion(&qset->remove_complete);
}
