
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
struct z_erofs_decompress_req {unsigned int inputsize; scalar_t__* in; unsigned int outputsize; scalar_t__* out; int sb; scalar_t__ partial_decoding; int pageofs_out; scalar_t__ inplace_io; } ;
struct TYPE_2__ {int feature_incompat; } ;


 int DUMP_PREFIX_OFFSET ;
 int EIO ;
 int EOPNOTSUPP ;
 int EROFS_FEATURE_INCOMPAT_LZ4_0PADDING ;
 TYPE_1__* EROFS_SB (int ) ;
 int KERN_DEBUG ;
 int const LZ4_DECOMPRESS_INPLACE_MARGIN (unsigned int) ;
 int LZ4_decompress_safe_partial (int *,int *,unsigned int,unsigned int,unsigned int) ;
 int PAGE_ALIGN (int ) ;
 unsigned int PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int WARN_ON (int) ;
 int erofs_err (int ,char*,unsigned int,unsigned int,unsigned int) ;
 int erofs_put_pcpubuf (int *) ;
 int * generic_copy_inplace_data (struct z_erofs_decompress_req*,int *,unsigned int) ;
 int * kmap_atomic (scalar_t__) ;
 int kunmap_atomic (int *) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,unsigned int,int) ;

__attribute__((used)) static int z_erofs_lz4_decompress(struct z_erofs_decompress_req *rq, u8 *out)
{
 unsigned int inputmargin, inlen;
 u8 *src;
 bool copied, support_0padding;
 int ret;

 if (rq->inputsize > PAGE_SIZE)
  return -EOPNOTSUPP;

 src = kmap_atomic(*rq->in);
 inputmargin = 0;
 support_0padding = 0;


 if (EROFS_SB(rq->sb)->feature_incompat &
     EROFS_FEATURE_INCOMPAT_LZ4_0PADDING) {
  support_0padding = 1;

  while (!src[inputmargin & ~PAGE_MASK])
   if (!(++inputmargin & ~PAGE_MASK))
    break;

  if (inputmargin >= rq->inputsize) {
   kunmap_atomic(src);
   return -EIO;
  }
 }

 copied = 0;
 inlen = rq->inputsize - inputmargin;
 if (rq->inplace_io) {
  const uint oend = (rq->pageofs_out +
       rq->outputsize) & ~PAGE_MASK;
  const uint nr = PAGE_ALIGN(rq->pageofs_out +
        rq->outputsize) >> PAGE_SHIFT;

  if (rq->partial_decoding || !support_0padding ||
      rq->out[nr - 1] != rq->in[0] ||
      rq->inputsize - oend <
        LZ4_DECOMPRESS_INPLACE_MARGIN(inlen)) {
   src = generic_copy_inplace_data(rq, src, inputmargin);
   inputmargin = 0;
   copied = 1;
  }
 }

 ret = LZ4_decompress_safe_partial(src + inputmargin, out,
       inlen, rq->outputsize,
       rq->outputsize);
 if (ret < 0) {
  erofs_err(rq->sb, "failed to decompress, in[%u, %u] out[%u]",
     inlen, inputmargin, rq->outputsize);
  WARN_ON(1);
  print_hex_dump(KERN_DEBUG, "[ in]: ", DUMP_PREFIX_OFFSET,
          16, 1, src + inputmargin, inlen, 1);
  print_hex_dump(KERN_DEBUG, "[out]: ", DUMP_PREFIX_OFFSET,
          16, 1, out, rq->outputsize, 1);
  ret = -EIO;
 }

 if (copied)
  erofs_put_pcpubuf(src);
 else
  kunmap_atomic(src);
 return ret;
}
