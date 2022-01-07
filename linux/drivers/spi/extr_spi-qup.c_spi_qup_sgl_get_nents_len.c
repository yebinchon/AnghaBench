
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;


 unsigned int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static u32 spi_qup_sgl_get_nents_len(struct scatterlist *sgl, u32 max,
         u32 *nents)
{
 struct scatterlist *sg;
 u32 total = 0;

 for (sg = sgl; sg; sg = sg_next(sg)) {
  unsigned int len = sg_dma_len(sg);


  if (((total + len) < total) || ((total + len) > max))
   break;

  total += len;
  (*nents)++;
 }

 return total;
}
