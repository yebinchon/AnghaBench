
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_sglist {int order; int num_sg; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int PMCRAID_MAX_IOADLS ;
 int __GFP_ZERO ;
 int get_order (int) ;
 struct pmcraid_sglist* kzalloc (int,int) ;
 int sgl_alloc_order (int,int,int,int,int *) ;

__attribute__((used)) static struct pmcraid_sglist *pmcraid_alloc_sglist(int buflen)
{
 struct pmcraid_sglist *sglist;
 int sg_size;
 int order;

 sg_size = buflen / (PMCRAID_MAX_IOADLS - 1);
 order = (sg_size > 0) ? get_order(sg_size) : 0;


 sglist = kzalloc(sizeof(struct pmcraid_sglist), GFP_KERNEL);
 if (sglist == ((void*)0))
  return ((void*)0);

 sglist->order = order;
 sgl_alloc_order(buflen, order, 0,
   GFP_KERNEL | GFP_DMA | __GFP_ZERO, &sglist->num_sg);

 return sglist;
}
