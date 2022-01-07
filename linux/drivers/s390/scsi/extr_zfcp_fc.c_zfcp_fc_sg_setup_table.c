
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ get_zeroed_page (int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,void*,int ) ;
 int zfcp_fc_sg_free_table (struct scatterlist*,int) ;

__attribute__((used)) static int zfcp_fc_sg_setup_table(struct scatterlist *sg, int count)
{
 void *addr;
 int i;

 sg_init_table(sg, count);
 for (i = 0; i < count; i++, sg = sg_next(sg)) {
  addr = (void *) get_zeroed_page(GFP_KERNEL);
  if (!addr) {
   zfcp_fc_sg_free_table(sg, i);
   return -ENOMEM;
  }
  sg_set_buf(sg, addr, PAGE_SIZE);
 }
 return 0;
}
