
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct esas2r_mem_desc {int phys_addr; int * virt_addr; scalar_t__ esas2r_data; scalar_t__ esas2r_param; } ;
struct esas2r_adapter {TYPE_1__* pcid; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,size_t,scalar_t__,int ) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void esas2r_initmem_free(struct esas2r_adapter *a,
    struct esas2r_mem_desc *mem_desc)
{
 if (mem_desc->virt_addr == ((void*)0))
  return;
 if (mem_desc->phys_addr) {
  int unalign = ((u8 *)mem_desc->virt_addr) -
         ((u8 *)mem_desc->esas2r_data);

  dma_free_coherent(&a->pcid->dev,
      (size_t)mem_desc->esas2r_param,
      mem_desc->esas2r_data,
      (dma_addr_t)(mem_desc->phys_addr - unalign));
 } else {
  kfree(mem_desc->esas2r_data);
 }

 mem_desc->virt_addr = ((void*)0);
}
