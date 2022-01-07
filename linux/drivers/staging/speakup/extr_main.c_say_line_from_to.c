
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vc_data {int vc_origin; int vc_size_row; } ;


 int MSG_BLANK ;
 scalar_t__ cursor_track ;
 scalar_t__ read_all_mode ;
 scalar_t__ say_from_to (struct vc_data*,int,int,int) ;
 int spk_msg_get (int ) ;
 int spk_y ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void say_line_from_to(struct vc_data *vc, u_long from, u_long to,
        int read_punc)
{
 u_long start = vc->vc_origin + (spk_y * vc->vc_size_row);
 u_long end = start + (to * 2);

 start += from * 2;
 if (say_from_to(vc, start, end, read_punc) <= 0)
  if (cursor_track != read_all_mode)
   synth_printf("%s\n", spk_msg_get(MSG_BLANK));
}
