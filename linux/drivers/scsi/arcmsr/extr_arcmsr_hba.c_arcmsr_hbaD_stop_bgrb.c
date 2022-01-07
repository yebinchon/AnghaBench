
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MessageUnit_D {int inbound_msgaddr0; } ;
struct AdapterControlBlock {TYPE_1__* host; int acb_flags; struct MessageUnit_D* pmuD; } ;
struct TYPE_2__ {int host_no; } ;


 int ACB_F_MSG_START_BGRB ;
 int ARCMSR_INBOUND_MESG0_STOP_BGRB ;
 int arcmsr_hbaD_wait_msgint_ready (struct AdapterControlBlock*) ;
 int pr_notice (char*,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void arcmsr_hbaD_stop_bgrb(struct AdapterControlBlock *pACB)
{
 struct MessageUnit_D *reg = pACB->pmuD;

 pACB->acb_flags &= ~ACB_F_MSG_START_BGRB;
 writel(ARCMSR_INBOUND_MESG0_STOP_BGRB, reg->inbound_msgaddr0);
 if (!arcmsr_hbaD_wait_msgint_ready(pACB))
  pr_notice("arcmsr%d: wait 'stop adapter background rebuild' "
   "timeout\n", pACB->host->host_no);
}
