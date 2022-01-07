
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; int pmuE; int mem_base0; int pmuC; int mem_base1; int pmuA; } ;







 int iounmap (int ) ;

__attribute__((used)) static void arcmsr_unmap_pciregion(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 132:{
  iounmap(acb->pmuA);
 }
 break;
 case 131:{
  iounmap(acb->mem_base0);
  iounmap(acb->mem_base1);
 }

 break;
 case 130:{
  iounmap(acb->pmuC);
 }
 break;
 case 129:
  iounmap(acb->mem_base0);
  break;
 case 128:
  iounmap(acb->pmuE);
  break;
 }
}
