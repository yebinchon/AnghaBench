
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_decompress_req {scalar_t__ alg; } ;
struct list_head {int dummy; } ;


 scalar_t__ Z_EROFS_COMPRESSION_SHIFTED ;
 int z_erofs_decompress_generic (struct z_erofs_decompress_req*,struct list_head*) ;
 int z_erofs_shifted_transform (struct z_erofs_decompress_req*,struct list_head*) ;

int z_erofs_decompress(struct z_erofs_decompress_req *rq,
         struct list_head *pagepool)
{
 if (rq->alg == Z_EROFS_COMPRESSION_SHIFTED)
  return z_erofs_shifted_transform(rq, pagepool);
 return z_erofs_decompress_generic(rq, pagepool);
}
