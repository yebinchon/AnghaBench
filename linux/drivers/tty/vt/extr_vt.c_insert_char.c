
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned int vc_cols; unsigned int vc_x; scalar_t__ vc_need_wrap; int vc_video_erase_char; scalar_t__ vc_pos; } ;


 scalar_t__ con_should_update (struct vc_data*) ;
 int do_update_region (struct vc_data*,unsigned long,unsigned int) ;
 int scr_memmovew (unsigned short*,unsigned short*,unsigned int) ;
 int scr_memsetw (unsigned short*,int ,unsigned int) ;
 int vc_uniscr_insert (struct vc_data*,unsigned int) ;

__attribute__((used)) static void insert_char(struct vc_data *vc, unsigned int nr)
{
 unsigned short *p = (unsigned short *) vc->vc_pos;

 vc_uniscr_insert(vc, nr);
 scr_memmovew(p + nr, p, (vc->vc_cols - vc->vc_x - nr) * 2);
 scr_memsetw(p, vc->vc_video_erase_char, nr * 2);
 vc->vc_need_wrap = 0;
 if (con_should_update(vc))
  do_update_region(vc, (unsigned long) p,
   vc->vc_cols - vc->vc_x);
}
