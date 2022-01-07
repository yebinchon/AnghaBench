
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union fotg210_shadow {struct fotg210_qh* qh; scalar_t__ ptr; } ;
struct fotg210_qh {unsigned int period; unsigned int start; int usecs; int c_usecs; int intr_node; scalar_t__ xacterrs; int qh_state; int qh_dma; TYPE_2__* hw; union fotg210_shadow qh_next; TYPE_1__* dev; } ;
struct fotg210_hcd {unsigned int periodic_size; scalar_t__* periodic; int intr_count; int intr_qh_list; union fotg210_shadow* pshadow; } ;
typedef scalar_t__ __hc32 ;
struct TYPE_7__ {int bandwidth_allocated; } ;
struct TYPE_8__ {TYPE_3__ self; } ;
struct TYPE_6__ {scalar_t__ hw_next; int hw_info2; } ;
struct TYPE_5__ {int dev; } ;


 int QH_CMASK ;
 scalar_t__ QH_NEXT (struct fotg210_hcd*,int ) ;
 int QH_SMASK ;
 int QH_STATE_LINKED ;
 scalar_t__ Q_NEXT_TYPE (struct fotg210_hcd*,scalar_t__) ;
 int Q_TYPE_QH ;
 scalar_t__ cpu_to_hc32 (struct fotg210_hcd*,int ) ;
 int dev_dbg (int *,char*,unsigned int,int,struct fotg210_qh*,unsigned int,int,int) ;
 int enable_periodic (struct fotg210_hcd*) ;
 TYPE_4__* fotg210_to_hcd (struct fotg210_hcd*) ;
 int hc32_to_cpup (struct fotg210_hcd*,int *) ;
 int list_add (int *,int *) ;
 union fotg210_shadow* periodic_next_shadow (struct fotg210_hcd*,union fotg210_shadow*,scalar_t__) ;
 scalar_t__* shadow_next_periodic (struct fotg210_hcd*,union fotg210_shadow*,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void qh_link_periodic(struct fotg210_hcd *fotg210, struct fotg210_qh *qh)
{
 unsigned i;
 unsigned period = qh->period;

 dev_dbg(&qh->dev->dev,
   "link qh%d-%04x/%p start %d [%d/%d us]\n", period,
   hc32_to_cpup(fotg210, &qh->hw->hw_info2) &
   (QH_CMASK | QH_SMASK), qh, qh->start, qh->usecs,
   qh->c_usecs);


 if (period == 0)
  period = 1;

 for (i = qh->start; i < fotg210->periodic_size; i += period) {
  union fotg210_shadow *prev = &fotg210->pshadow[i];
  __hc32 *hw_p = &fotg210->periodic[i];
  union fotg210_shadow here = *prev;
  __hc32 type = 0;


  while (here.ptr) {
   type = Q_NEXT_TYPE(fotg210, *hw_p);
   if (type == cpu_to_hc32(fotg210, Q_TYPE_QH))
    break;
   prev = periodic_next_shadow(fotg210, prev, type);
   hw_p = shadow_next_periodic(fotg210, &here, type);
   here = *prev;
  }




  while (here.ptr && qh != here.qh) {
   if (qh->period > here.qh->period)
    break;
   prev = &here.qh->qh_next;
   hw_p = &here.qh->hw->hw_next;
   here = *prev;
  }

  if (qh != here.qh) {
   qh->qh_next = here;
   if (here.qh)
    qh->hw->hw_next = *hw_p;
   wmb();
   prev->qh = qh;
   *hw_p = QH_NEXT(fotg210, qh->qh_dma);
  }
 }
 qh->qh_state = QH_STATE_LINKED;
 qh->xacterrs = 0;


 fotg210_to_hcd(fotg210)->self.bandwidth_allocated += qh->period
  ? ((qh->usecs + qh->c_usecs) / qh->period)
  : (qh->usecs * 8);

 list_add(&qh->intr_node, &fotg210->intr_qh_list);


 ++fotg210->intr_count;
 enable_periodic(fotg210);
}
