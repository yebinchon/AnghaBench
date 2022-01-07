
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int sgl_free_n_order (struct scatterlist*,int,int ) ;

void target_free_sgl(struct scatterlist *sgl, int nents)
{
 sgl_free_n_order(sgl, nents, 0);
}
