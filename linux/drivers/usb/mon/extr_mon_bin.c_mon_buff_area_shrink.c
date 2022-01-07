
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader_bin {unsigned int b_cnt; unsigned int b_in; scalar_t__ b_size; } ;



__attribute__((used)) static void mon_buff_area_shrink(struct mon_reader_bin *rp, unsigned int size)
{


 rp->b_cnt -= size;
 if (rp->b_in < size)
  rp->b_in += rp->b_size;
 rp->b_in -= size;
}
