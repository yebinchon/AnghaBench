
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MessageUnit_D {int inbound_msgaddr0; } ;
struct AdapterControlBlock {TYPE_1__* host; struct MessageUnit_D* pmuD; } ;
struct TYPE_2__ {int host_no; } ;


 int ARCMSR_INBOUND_MESG0_FLUSH_CACHE ;
 scalar_t__ arcmsr_hbaD_wait_msgint_ready (struct AdapterControlBlock*) ;
 int pr_notice (char*,int ,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static void arcmsr_hbaD_flush_cache(struct AdapterControlBlock *pACB)
{
 int retry_count = 15;
 struct MessageUnit_D *reg = pACB->pmuD;

 writel(ARCMSR_INBOUND_MESG0_FLUSH_CACHE, reg->inbound_msgaddr0);
 do {
  if (arcmsr_hbaD_wait_msgint_ready(pACB))
   break;

  retry_count--;
  pr_notice("arcmsr%d: wait 'flush adapter "
   "cache' timeout, retry count down = %d\n",
   pACB->host->host_no, retry_count);
 } while (retry_count != 0);
}
