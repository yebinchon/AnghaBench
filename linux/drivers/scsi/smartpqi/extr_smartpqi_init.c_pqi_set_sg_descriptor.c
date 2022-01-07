
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scatterlist {int dummy; } ;
struct pqi_sg_descriptor {int flags; int length; int address; } ;


 int put_unaligned_le32 (unsigned int,int *) ;
 int put_unaligned_le64 (int ,int *) ;
 int sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static inline void pqi_set_sg_descriptor(
 struct pqi_sg_descriptor *sg_descriptor, struct scatterlist *sg)
{
 u64 address = (u64)sg_dma_address(sg);
 unsigned int length = sg_dma_len(sg);

 put_unaligned_le64(address, &sg_descriptor->address);
 put_unaligned_le32(length, &sg_descriptor->length);
 put_unaligned_le32(0, &sg_descriptor->flags);
}
