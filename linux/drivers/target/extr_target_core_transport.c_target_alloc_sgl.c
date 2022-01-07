
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 struct scatterlist* sgl_alloc_order (int ,int ,int,int,unsigned int*) ;

int
target_alloc_sgl(struct scatterlist **sgl, unsigned int *nents, u32 length,
   bool zero_page, bool chainable)
{
 gfp_t gfp = GFP_KERNEL | (zero_page ? __GFP_ZERO : 0);

 *sgl = sgl_alloc_order(length, 0, chainable, gfp, nents);
 return *sgl ? 0 : -ENOMEM;
}
