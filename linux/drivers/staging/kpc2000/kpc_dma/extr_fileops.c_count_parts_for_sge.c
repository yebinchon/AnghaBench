
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static inline
unsigned int count_parts_for_sge(struct scatterlist *sg)
{
 return DIV_ROUND_UP(sg_dma_len(sg), 0x80000);
}
