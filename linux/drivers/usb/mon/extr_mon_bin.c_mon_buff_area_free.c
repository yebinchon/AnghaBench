
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader_bin {unsigned int b_cnt; unsigned int b_out; unsigned int b_size; } ;


 unsigned int PKT_ALIGN ;

__attribute__((used)) static void mon_buff_area_free(struct mon_reader_bin *rp, unsigned int size)
{

 size = (size + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
 rp->b_cnt -= size;
 if ((rp->b_out += size) >= rp->b_size)
  rp->b_out -= rp->b_size;
}
