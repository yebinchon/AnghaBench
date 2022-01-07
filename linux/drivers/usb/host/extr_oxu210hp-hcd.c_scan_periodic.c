
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union ehci_shadow {int * ptr; TYPE_2__* qh; } ;
struct oxu_hcd {int periodic_size; unsigned int next_uframe; int* periodic; TYPE_1__* regs; union ehci_shadow* pshadow; } ;
typedef int __le32 ;
struct TYPE_10__ {int state; } ;
struct TYPE_9__ {int hw_next; int qtd_list; union ehci_shadow qh_next; } ;
struct TYPE_8__ {int frame_index; } ;


 scalar_t__ HC_IS_RUNNING (int ) ;
 int Q_NEXT_TYPE (int) ;

 int intr_deschedule (struct oxu_hcd*,TYPE_2__*) ;
 unsigned int list_empty (int *) ;
 int oxu_dbg (struct oxu_hcd*,char*,int,unsigned int,int *) ;
 TYPE_6__* oxu_to_hcd (struct oxu_hcd*) ;
 unsigned int qh_completions (struct oxu_hcd*,TYPE_2__*) ;
 TYPE_2__* qh_get (TYPE_2__*) ;
 int qh_put (TYPE_2__*) ;
 unsigned int readl (int *) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void scan_periodic(struct oxu_hcd *oxu)
{
 unsigned frame, clock, now_uframe, mod;
 unsigned modified;

 mod = oxu->periodic_size << 3;






 now_uframe = oxu->next_uframe;
 if (HC_IS_RUNNING(oxu_to_hcd(oxu)->state))
  clock = readl(&oxu->regs->frame_index);
 else
  clock = now_uframe + mod - 1;
 clock %= mod;

 for (;;) {
  union ehci_shadow q, *q_p;
  __le32 type, *hw_p;


  frame = now_uframe >> 3;
  if (frame != (clock >> 3)) {

   now_uframe |= 0x07;
  }

restart:

  q_p = &oxu->pshadow[frame];
  hw_p = &oxu->periodic[frame];
  q.ptr = q_p->ptr;
  type = Q_NEXT_TYPE(*hw_p);
  modified = 0;

  while (q.ptr != ((void*)0)) {
   union ehci_shadow temp;

   switch (type) {
   case 128:

    temp.qh = qh_get(q.qh);
    type = Q_NEXT_TYPE(q.qh->hw_next);
    q = q.qh->qh_next;
    modified = qh_completions(oxu, temp.qh);
    if (unlikely(list_empty(&temp.qh->qtd_list)))
     intr_deschedule(oxu, temp.qh);
    qh_put(temp.qh);
    break;
   default:
    oxu_dbg(oxu, "corrupt type %d frame %d shadow %p\n",
     type, frame, q.ptr);
    q.ptr = ((void*)0);
   }


   if (unlikely(modified))
    goto restart;
  }
  if (now_uframe == clock) {
   unsigned now;

   if (!HC_IS_RUNNING(oxu_to_hcd(oxu)->state))
    break;
   oxu->next_uframe = now_uframe;
   now = readl(&oxu->regs->frame_index) % mod;
   if (now_uframe == now)
    break;


   clock = now;
  } else {
   now_uframe++;
   now_uframe %= mod;
  }
 }
}
