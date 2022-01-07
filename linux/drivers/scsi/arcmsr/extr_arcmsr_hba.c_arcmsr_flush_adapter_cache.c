
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; } ;







 int arcmsr_hbaA_flush_cache (struct AdapterControlBlock*) ;
 int arcmsr_hbaB_flush_cache (struct AdapterControlBlock*) ;
 int arcmsr_hbaC_flush_cache (struct AdapterControlBlock*) ;
 int arcmsr_hbaD_flush_cache (struct AdapterControlBlock*) ;
 int arcmsr_hbaE_flush_cache (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_flush_adapter_cache(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {

 case 132: {
  arcmsr_hbaA_flush_cache(acb);
  }
  break;

 case 131: {
  arcmsr_hbaB_flush_cache(acb);
  }
  break;
 case 130: {
  arcmsr_hbaC_flush_cache(acb);
  }
  break;
 case 129:
  arcmsr_hbaD_flush_cache(acb);
  break;
 case 128:
  arcmsr_hbaE_flush_cache(acb);
  break;
 }
}
