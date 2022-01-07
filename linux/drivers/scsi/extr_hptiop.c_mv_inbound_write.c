
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {TYPE_1__* regs; TYPE_2__* mu; } ;
struct TYPE_7__ {TYPE_4__ mv; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_6__ {int inbound_head; int * inbound_q; } ;
struct TYPE_5__ {int inbound_doorbell; } ;


 int MVIOP_MU_INBOUND_INT_POSTQUEUE ;
 int MVIOP_QUEUE_LEN ;
 int memcpy_toio (int *,int *,int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void mv_inbound_write(u64 p, struct hptiop_hba *hba)
{
 u32 inbound_head = readl(&hba->u.mv.mu->inbound_head);
 u32 head = inbound_head + 1;

 if (head == MVIOP_QUEUE_LEN)
  head = 0;

 memcpy_toio(&hba->u.mv.mu->inbound_q[inbound_head], &p, 8);
 writel(head, &hba->u.mv.mu->inbound_head);
 writel(MVIOP_MU_INBOUND_INT_POSTQUEUE,
   &hba->u.mv.regs->inbound_doorbell);
}
