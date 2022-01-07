
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AdapterControlBlock {int adapter_type; } ;







 int arcmsr_hbaA_abort_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_hbaB_abort_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_hbaC_abort_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_hbaD_abort_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_hbaE_abort_allcmd (struct AdapterControlBlock*) ;

__attribute__((used)) static uint8_t arcmsr_abort_allcmd(struct AdapterControlBlock *acb)
{
 uint8_t rtnval = 0;
 switch (acb->adapter_type) {
 case 132: {
  rtnval = arcmsr_hbaA_abort_allcmd(acb);
  }
  break;

 case 131: {
  rtnval = arcmsr_hbaB_abort_allcmd(acb);
  }
  break;

 case 130: {
  rtnval = arcmsr_hbaC_abort_allcmd(acb);
  }
  break;

 case 129:
  rtnval = arcmsr_hbaD_abort_allcmd(acb);
  break;
 case 128:
  rtnval = arcmsr_hbaE_abort_allcmd(acb);
  break;
 }
 return rtnval;
}
