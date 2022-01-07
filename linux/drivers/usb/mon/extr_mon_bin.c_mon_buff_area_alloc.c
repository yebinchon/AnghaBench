
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader_bin {scalar_t__ b_cnt; scalar_t__ b_size; unsigned int b_in; } ;


 unsigned int PKT_ALIGN ;

__attribute__((used)) static unsigned int mon_buff_area_alloc(struct mon_reader_bin *rp,
    unsigned int size)
{
 unsigned int offset;

 size = (size + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
 if (rp->b_cnt + size > rp->b_size)
  return ~0;
 offset = rp->b_in;
 rp->b_cnt += size;
 if ((rp->b_in += size) >= rp->b_size)
  rp->b_in -= rp->b_size;
 return offset;
}
