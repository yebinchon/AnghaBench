
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_window; int status; } ;
struct whc_qset {int max_burst; TYPE_1__ qh; scalar_t__ reset; } ;
struct whc {int dummy; } ;


 int QH_STATUS_SEQ_MASK ;
 int cpu_to_le32 (int) ;

void qset_reset(struct whc *whc, struct whc_qset *qset)
{
 qset->reset = 0;

 qset->qh.status &= ~QH_STATUS_SEQ_MASK;
 qset->qh.cur_window = cpu_to_le32((1 << qset->max_burst) - 1);
}
