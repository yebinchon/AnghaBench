
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; unsigned int offset; } ;


 int CXGBI_DBG_DDP ;
 int EINVAL ;
 unsigned int PAGE_SIZE ;
 int log_debug (int,char*,int,int,int,unsigned int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int cxgbi_ddp_sgl_check(struct scatterlist *sgl, int nents)
{
 int i;
 int last_sgidx = nents - 1;
 struct scatterlist *sg = sgl;

 for (i = 0; i < nents; i++, sg = sg_next(sg)) {
  unsigned int len = sg->length + sg->offset;

  if ((sg->offset & 0x3) || (i && sg->offset) ||
      ((i != last_sgidx) && len != PAGE_SIZE)) {
   log_debug(1 << CXGBI_DBG_DDP,
      "sg %u/%u, %u,%u, not aligned.\n",
      i, nents, sg->offset, sg->length);
   goto err_out;
  }
 }
 return 0;
err_out:
 return -EINVAL;
}
