
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int* outlist_cptr; int outlist_rptr; int list_count; TYPE_2__* mu; TYPE_1__* outlist; } ;
struct TYPE_8__ {TYPE_3__ mvfrey; } ;
struct hptiop_hba {TYPE_4__ u; scalar_t__ initialized; } ;
struct TYPE_6__ {int pcie_f0_int_enable; int isr_cause; int cpu_to_f0_msg_a; int f0_doorbell; } ;
struct TYPE_5__ {int val; } ;


 int BUG_ON (int) ;
 int CPU_TO_F0_DRBL_MSG_BIT ;
 int IOPMU_QUEUE_MASK_HOST_BITS ;
 int dprintk (char*,int) ;
 int hptiop_message_callback (struct hptiop_hba*,int) ;
 int hptiop_request_callback_mvfrey (struct hptiop_hba*,int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int iop_intr_mvfrey(struct hptiop_hba *hba)
{
 u32 _tag, status, cptr, cur_rptr;
 int ret = 0;

 if (hba->initialized)
  writel(0, &(hba->u.mvfrey.mu->pcie_f0_int_enable));

 status = readl(&(hba->u.mvfrey.mu->f0_doorbell));
 if (status) {
  writel(status, &(hba->u.mvfrey.mu->f0_doorbell));
  if (status & CPU_TO_F0_DRBL_MSG_BIT) {
   u32 msg = readl(&(hba->u.mvfrey.mu->cpu_to_f0_msg_a));
   dprintk("received outbound msg %x\n", msg);
   hptiop_message_callback(hba, msg);
  }
  ret = 1;
 }

 status = readl(&(hba->u.mvfrey.mu->isr_cause));
 if (status) {
  writel(status, &(hba->u.mvfrey.mu->isr_cause));
  do {
   cptr = *hba->u.mvfrey.outlist_cptr & 0xff;
   cur_rptr = hba->u.mvfrey.outlist_rptr;
   while (cur_rptr != cptr) {
    cur_rptr++;
    if (cur_rptr == hba->u.mvfrey.list_count)
     cur_rptr = 0;

    _tag = hba->u.mvfrey.outlist[cur_rptr].val;
    BUG_ON(!(_tag & IOPMU_QUEUE_MASK_HOST_BITS));
    hptiop_request_callback_mvfrey(hba, _tag);
    ret = 1;
   }
   hba->u.mvfrey.outlist_rptr = cur_rptr;
  } while (cptr != (*hba->u.mvfrey.outlist_cptr & 0xff));
 }

 if (hba->initialized)
  writel(0x1010, &(hba->u.mvfrey.mu->pcie_f0_int_enable));

 return ret;
}
