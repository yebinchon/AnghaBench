
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int prev; } ;
struct TYPE_7__ {int pending; int pend_q_lock; scalar_t__ scbpro; TYPE_2__ pend_q; } ;
struct TYPE_5__ {int max_scbs; } ;
struct asd_ha_struct {TYPE_3__ seq; int pcidev; TYPE_1__ hw_prof; } ;
struct TYPE_8__ {int prev; } ;
struct asd_ascb {TYPE_4__ list; } ;


 int LIST_HEAD (int ) ;
 int SAS_QUEUE_FULL ;
 int SCBPRO ;
 int __list_add (int *,int ,TYPE_4__*) ;
 int asd_printk (char*,int ) ;
 int asd_start_scb_timers (int *) ;
 int asd_swap_head_scb (struct asd_ha_struct*,struct asd_ascb*) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int ) ;
 int list ;
 int list_splice_init (int *,int ) ;
 int pci_name (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int asd_post_ascb_list(struct asd_ha_struct *asd_ha, struct asd_ascb *ascb,
         int num)
{
 unsigned long flags;
 LIST_HEAD(list);
 int can_queue;

 spin_lock_irqsave(&asd_ha->seq.pend_q_lock, flags);
 can_queue = asd_ha->hw_prof.max_scbs - asd_ha->seq.pending;
 if (can_queue >= num)
  asd_ha->seq.pending += num;
 else
  can_queue = 0;

 if (!can_queue) {
  spin_unlock_irqrestore(&asd_ha->seq.pend_q_lock, flags);
  asd_printk("%s: scb queue full\n", pci_name(asd_ha->pcidev));
  return -SAS_QUEUE_FULL;
 }

 asd_swap_head_scb(asd_ha, ascb);

 __list_add(&list, ascb->list.prev, &ascb->list);

 asd_start_scb_timers(&list);

 asd_ha->seq.scbpro += num;
 list_splice_init(&list, asd_ha->seq.pend_q.prev);
 asd_write_reg_dword(asd_ha, SCBPRO, (u32)asd_ha->seq.scbpro);
 spin_unlock_irqrestore(&asd_ha->seq.pend_q_lock, flags);

 return 0;
}
