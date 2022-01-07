
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; } ;







 int arcmsr_hbaA_stop_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_hbaB_stop_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_hbaC_stop_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_hbaD_stop_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_hbaE_stop_bgrb (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_stop_adapter_bgrb(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 132: {
  arcmsr_hbaA_stop_bgrb(acb);
  }
  break;

 case 131: {
  arcmsr_hbaB_stop_bgrb(acb);
  }
  break;
 case 130: {
  arcmsr_hbaC_stop_bgrb(acb);
  }
  break;
 case 129:
  arcmsr_hbaD_stop_bgrb(acb);
  break;
 case 128:
  arcmsr_hbaE_stop_bgrb(acb);
  break;
 }
}
