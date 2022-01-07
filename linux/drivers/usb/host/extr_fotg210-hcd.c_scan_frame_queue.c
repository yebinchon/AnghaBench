
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union fotg210_shadow {int * ptr; TYPE_1__* itd; } ;
struct fotg210_hcd {scalar_t__ isoc_count; int * periodic; union fotg210_shadow* pshadow; } ;
typedef int __hc32 ;
struct TYPE_2__ {int* hw_transaction; int hw_next; union fotg210_shadow itd_next; } ;


 int EINVAL ;
 int ITD_ACTIVE (struct fotg210_hcd*) ;
 int Q_NEXT_TYPE (struct fotg210_hcd*,int ) ;



 int fotg210_dbg (struct fotg210_hcd*,char*,int ,unsigned int,int *) ;
 int hc32_to_cpu (struct fotg210_hcd*,int ) ;
 int itd_complete (struct fotg210_hcd*,TYPE_1__*) ;
 int rmb () ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static inline int scan_frame_queue(struct fotg210_hcd *fotg210, unsigned frame,
  unsigned now_frame, bool live)
{
 unsigned uf;
 bool modified;
 union fotg210_shadow q, *q_p;
 __hc32 type, *hw_p;


 q_p = &fotg210->pshadow[frame];
 hw_p = &fotg210->periodic[frame];
 q.ptr = q_p->ptr;
 type = Q_NEXT_TYPE(fotg210, *hw_p);
 modified = 0;

 while (q.ptr) {
  switch (hc32_to_cpu(fotg210, type)) {
  case 129:





   if (frame == now_frame && live) {
    rmb();
    for (uf = 0; uf < 8; uf++) {
     if (q.itd->hw_transaction[uf] &
       ITD_ACTIVE(fotg210))
      break;
    }
    if (uf < 8) {
     q_p = &q.itd->itd_next;
     hw_p = &q.itd->hw_next;
     type = Q_NEXT_TYPE(fotg210,
       q.itd->hw_next);
     q = *q_p;
     break;
    }
   }






   *q_p = q.itd->itd_next;
   *hw_p = q.itd->hw_next;
   type = Q_NEXT_TYPE(fotg210, q.itd->hw_next);
   wmb();
   modified = itd_complete(fotg210, q.itd);
   q = *q_p;
   break;
  default:
   fotg210_dbg(fotg210, "corrupt type %d frame %d shadow %p\n",
     type, frame, q.ptr);

  case 128:
  case 130:

   q.ptr = ((void*)0);
   break;
  }


  if (unlikely(modified && fotg210->isoc_count > 0))
   return -EINVAL;
 }
 return 0;
}
