
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dsd32 {int length; int address; } ;


 int put_unaligned_le32 (int ,int *) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static inline void append_dsd32(struct dsd32 **dsd, struct scatterlist *sg)
{
 put_unaligned_le32(sg_dma_address(sg), &(*dsd)->address);
 put_unaligned_le32(sg_dma_len(sg), &(*dsd)->length);
 (*dsd)++;
}
