
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {unsigned int vc_rows; int vc_video_erase_char; } ;
typedef enum con_scroll { ____Placeholder_con_scroll } con_scroll ;




 int mda_addr (int ,unsigned int) ;
 int mda_convert_attr (int ) ;
 unsigned int mda_num_columns ;
 int scr_memmovew (int ,int ,unsigned int) ;
 int scr_memsetw (int ,int ,unsigned int) ;

__attribute__((used)) static bool mdacon_scroll(struct vc_data *c, unsigned int t, unsigned int b,
  enum con_scroll dir, unsigned int lines)
{
 u16 eattr = mda_convert_attr(c->vc_video_erase_char);

 if (!lines)
  return 0;

 if (lines > c->vc_rows)
  lines = c->vc_rows;

 switch (dir) {

 case 128:
  scr_memmovew(mda_addr(0, t), mda_addr(0, t + lines),
    (b-t-lines)*mda_num_columns*2);
  scr_memsetw(mda_addr(0, b - lines), eattr,
    lines*mda_num_columns*2);
  break;

 case 129:
  scr_memmovew(mda_addr(0, t + lines), mda_addr(0, t),
    (b-t-lines)*mda_num_columns*2);
  scr_memsetw(mda_addr(0, t), eattr, lines*mda_num_columns*2);
  break;
 }

 return 0;
}
