
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct MessageUnit_D {int inbound_msgaddr0; } ;
struct AdapterControlBlock {TYPE_1__* host; struct MessageUnit_D* pmuD; } ;
struct TYPE_2__ {int host_no; } ;


 int ARCMSR_INBOUND_MESG0_ABORT_CMD ;
 int arcmsr_hbaD_wait_msgint_ready (struct AdapterControlBlock*) ;
 int pr_notice (char*,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static uint8_t arcmsr_hbaD_abort_allcmd(struct AdapterControlBlock *pACB)
{
 struct MessageUnit_D *reg = pACB->pmuD;

 writel(ARCMSR_INBOUND_MESG0_ABORT_CMD, reg->inbound_msgaddr0);
 if (!arcmsr_hbaD_wait_msgint_ready(pACB)) {
  pr_notice("arcmsr%d: wait 'abort all outstanding "
   "command' timeout\n", pACB->host->host_no);
  return 0;
 }
 return 1;
}
