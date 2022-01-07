
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scatterlist {int dummy; } ;
struct SGDescriptor {scalar_t__ Ext; int Len; int Addr; } ;


 int cpu_to_le32 (unsigned int) ;
 int cpu_to_le64 (int ) ;
 int sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void hpsa_set_sg_descriptor(struct SGDescriptor *desc,
       struct scatterlist *sg)
{
 u64 addr64 = (u64) sg_dma_address(sg);
 unsigned int len = sg_dma_len(sg);

 desc->Addr = cpu_to_le64(addr64);
 desc->Len = cpu_to_le32(len);
 desc->Ext = 0;
}
