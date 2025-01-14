
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union fotg210_shadow {TYPE_4__* itd; TYPE_2__* fstn; TYPE_1__* qh; scalar_t__ ptr; } ;
struct fotg210_qh_hw {int hw_info2; int hw_next; } ;
struct fotg210_hcd {unsigned int uframe_periodic_max; union fotg210_shadow* pshadow; int * periodic; } ;
typedef int __hc32 ;
struct TYPE_8__ {union fotg210_shadow itd_next; int hw_next; TYPE_3__* stream; int * hw_transaction; } ;
struct TYPE_7__ {unsigned int usecs; } ;
struct TYPE_6__ {union fotg210_shadow fstn_next; int hw_next; int hw_prev; } ;
struct TYPE_5__ {unsigned int usecs; unsigned int c_usecs; union fotg210_shadow qh_next; struct fotg210_qh_hw* hw; } ;


 int FOTG210_LIST_END (struct fotg210_hcd*) ;
 int Q_NEXT_TYPE (struct fotg210_hcd*,int ) ;


 int cpu_to_hc32 (struct fotg210_hcd*,int) ;
 int fotg210_dbg (struct fotg210_hcd*,char*) ;
 int fotg210_err (struct fotg210_hcd*,char*,unsigned int,unsigned int) ;
 int hc32_to_cpu (struct fotg210_hcd*,int ) ;

__attribute__((used)) static unsigned short periodic_usecs(struct fotg210_hcd *fotg210,
  unsigned frame, unsigned uframe)
{
 __hc32 *hw_p = &fotg210->periodic[frame];
 union fotg210_shadow *q = &fotg210->pshadow[frame];
 unsigned usecs = 0;
 struct fotg210_qh_hw *hw;

 while (q->ptr) {
  switch (hc32_to_cpu(fotg210, Q_NEXT_TYPE(fotg210, *hw_p))) {
  case 128:
   hw = q->qh->hw;

   if (hw->hw_info2 & cpu_to_hc32(fotg210, 1 << uframe))
    usecs += q->qh->usecs;

   if (hw->hw_info2 & cpu_to_hc32(fotg210,
     1 << (8 + uframe)))
    usecs += q->qh->c_usecs;
   hw_p = &hw->hw_next;
   q = &q->qh->qh_next;
   break;

  default:



   if (q->fstn->hw_prev != FOTG210_LIST_END(fotg210))
    fotg210_dbg(fotg210, "ignoring FSTN cost ...\n");

   hw_p = &q->fstn->hw_next;
   q = &q->fstn->fstn_next;
   break;
  case 129:
   if (q->itd->hw_transaction[uframe])
    usecs += q->itd->stream->usecs;
   hw_p = &q->itd->hw_next;
   q = &q->itd->itd_next;
   break;
  }
 }
 if (usecs > fotg210->uframe_periodic_max)
  fotg210_err(fotg210, "uframe %d sched overrun: %d usecs\n",
    frame * 8 + uframe, usecs);
 return usecs;
}
