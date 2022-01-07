
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader_bin {scalar_t__ b_cnt; scalar_t__ b_size; unsigned int b_in; } ;


 unsigned int PKT_ALIGN ;
 int mon_buff_area_fill (struct mon_reader_bin*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int mon_buff_area_alloc_contiguous(struct mon_reader_bin *rp,
    unsigned int size)
{
 unsigned int offset;
 unsigned int fill_size;

 size = (size + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
 if (rp->b_cnt + size > rp->b_size)
  return ~0;
 if (rp->b_in + size > rp->b_size) {





  fill_size = rp->b_size - rp->b_in;
  if (rp->b_cnt + size + fill_size > rp->b_size)
   return ~0;
  mon_buff_area_fill(rp, rp->b_in, fill_size);

  offset = 0;
  rp->b_in = size;
  rp->b_cnt += size + fill_size;
 } else if (rp->b_in + size == rp->b_size) {
  offset = rp->b_in;
  rp->b_in = 0;
  rp->b_cnt += size;
 } else {
  offset = rp->b_in;
  rp->b_in += size;
  rp->b_cnt += size;
 }
 return offset;
}
