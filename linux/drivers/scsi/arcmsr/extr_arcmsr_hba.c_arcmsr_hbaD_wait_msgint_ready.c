
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MessageUnit_D {int outbound_doorbell; } ;
struct AdapterControlBlock {struct MessageUnit_D* pmuD; } ;


 int ARCMSR_ARC1214_IOP2DRV_MESSAGE_CMD_DONE ;
 int msleep (int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static bool arcmsr_hbaD_wait_msgint_ready(struct AdapterControlBlock *pACB)
{
 struct MessageUnit_D *reg = pACB->pmuD;
 int i;

 for (i = 0; i < 2000; i++) {
  if (readl(reg->outbound_doorbell)
   & ARCMSR_ARC1214_IOP2DRV_MESSAGE_CMD_DONE) {
   writel(ARCMSR_ARC1214_IOP2DRV_MESSAGE_CMD_DONE,
    reg->outbound_doorbell);
   return 1;
  }
  msleep(10);
 }
 return 0;
}
