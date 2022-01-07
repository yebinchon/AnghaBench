
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_sglist {int order; int scatterlist; int num_sg; } ;


 int GFP_KERNEL ;
 int IPR_MAX_SGLIST ;
 int get_order (int) ;
 int ipr_trace ;
 int kfree (struct ipr_sglist*) ;
 struct ipr_sglist* kzalloc (int,int ) ;
 int sgl_alloc_order (int,int,int,int ,int *) ;

__attribute__((used)) static struct ipr_sglist *ipr_alloc_ucode_buffer(int buf_len)
{
 int sg_size, order;
 struct ipr_sglist *sglist;


 sg_size = buf_len / (IPR_MAX_SGLIST - 1);


 order = get_order(sg_size);


 sglist = kzalloc(sizeof(struct ipr_sglist), GFP_KERNEL);
 if (sglist == ((void*)0)) {
  ipr_trace;
  return ((void*)0);
 }
 sglist->order = order;
 sglist->scatterlist = sgl_alloc_order(buf_len, order, 0, GFP_KERNEL,
           &sglist->num_sg);
 if (!sglist->scatterlist) {
  kfree(sglist);
  return ((void*)0);
 }

 return sglist;
}
