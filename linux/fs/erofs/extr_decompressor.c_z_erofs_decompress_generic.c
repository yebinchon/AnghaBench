
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_decompressor {int (* decompress ) (struct z_erofs_decompress_req*,void*) ;int (* prepare_destpages ) (struct z_erofs_decompress_req*,struct list_head*) ;} ;
struct z_erofs_decompress_req {int pageofs_out; int outputsize; int inplace_io; int * out; int alg; } ;
struct list_head {int dummy; } ;


 int DBG_BUGON (int) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (void*) ;
 unsigned int PAGE_ALIGN (int) ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (void*) ;
 int copy_from_pcpubuf (int *,void*,int,int) ;
 struct z_erofs_decompressor* decompressors ;
 void* erofs_get_pcpubuf (int ) ;
 int erofs_put_pcpubuf (void*) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 void* page_address (int ) ;
 int stub1 (struct z_erofs_decompress_req*,void*) ;
 int stub2 (struct z_erofs_decompress_req*,struct list_head*) ;
 int stub3 (struct z_erofs_decompress_req*,void*) ;
 void* vm_map_ram (int *,unsigned int const,int,int ) ;
 int vm_unmap_aliases () ;
 int vm_unmap_ram (void*,unsigned int const) ;

__attribute__((used)) static int z_erofs_decompress_generic(struct z_erofs_decompress_req *rq,
          struct list_head *pagepool)
{
 const unsigned int nrpages_out =
  PAGE_ALIGN(rq->pageofs_out + rq->outputsize) >> PAGE_SHIFT;
 const struct z_erofs_decompressor *alg = decompressors + rq->alg;
 unsigned int dst_maptype;
 void *dst;
 int ret, i;

 if (nrpages_out == 1 && !rq->inplace_io) {
  DBG_BUGON(!*rq->out);
  dst = kmap_atomic(*rq->out);
  dst_maptype = 0;
  goto dstmap_out;
 }






 if (rq->outputsize <= PAGE_SIZE * 7 / 8) {
  dst = erofs_get_pcpubuf(0);
  if (IS_ERR(dst))
   return PTR_ERR(dst);

  rq->inplace_io = 0;
  ret = alg->decompress(rq, dst);
  if (!ret)
   copy_from_pcpubuf(rq->out, dst, rq->pageofs_out,
       rq->outputsize);

  erofs_put_pcpubuf(dst);
  return ret;
 }

 ret = alg->prepare_destpages(rq, pagepool);
 if (ret < 0) {
  return ret;
 } else if (ret) {
  dst = page_address(*rq->out);
  dst_maptype = 1;
  goto dstmap_out;
 }

 i = 0;
 while (1) {
  dst = vm_map_ram(rq->out, nrpages_out, -1, PAGE_KERNEL);


  if (dst || ++i >= 3)
   break;
  vm_unmap_aliases();
 }

 if (!dst)
  return -ENOMEM;

 dst_maptype = 2;

dstmap_out:
 ret = alg->decompress(rq, dst + rq->pageofs_out);

 if (!dst_maptype)
  kunmap_atomic(dst);
 else if (dst_maptype == 2)
  vm_unmap_ram(dst, nrpages_out);
 return ret;
}
