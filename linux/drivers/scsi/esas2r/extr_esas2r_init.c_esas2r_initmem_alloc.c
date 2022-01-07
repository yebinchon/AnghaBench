
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct esas2r_mem_desc {scalar_t__ size; int * virt_addr; scalar_t__ phys_addr; int * esas2r_data; scalar_t__ esas2r_param; } ;
struct esas2r_adapter {TYPE_1__* pcid; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 int ESAS2R_LOG_CRIT ;
 int GFP_KERNEL ;
 int * PTR_ALIGN (int *,scalar_t__) ;
 int * dma_alloc_coherent (int *,size_t,int *,int ) ;
 int esas2r_log (int ,char*,unsigned long) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static bool esas2r_initmem_alloc(struct esas2r_adapter *a,
     struct esas2r_mem_desc *mem_desc,
     u32 align)
{
 mem_desc->esas2r_param = mem_desc->size + align;
 mem_desc->virt_addr = ((void*)0);
 mem_desc->phys_addr = 0;
 mem_desc->esas2r_data = dma_alloc_coherent(&a->pcid->dev,
         (size_t)mem_desc->
         esas2r_param,
         (dma_addr_t *)&mem_desc->
         phys_addr,
         GFP_KERNEL);

 if (mem_desc->esas2r_data == ((void*)0)) {
  esas2r_log(ESAS2R_LOG_CRIT,
      "failed to allocate %lu bytes of consistent memory!",
      (long
       unsigned
       int)mem_desc->esas2r_param);
  return 0;
 }

 mem_desc->virt_addr = PTR_ALIGN(mem_desc->esas2r_data, align);
 mem_desc->phys_addr = ALIGN(mem_desc->phys_addr, align);
 memset(mem_desc->virt_addr, 0, mem_desc->size);
 return 1;
}
