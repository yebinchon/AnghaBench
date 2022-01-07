
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_need_wrap; int vc_G0_charset; int vc_G1_charset; scalar_t__ vc_charset; int vc_translate; int vc_saved_G1; int vc_saved_G0; int vc_s_color; int vc_color; scalar_t__ vc_s_charset; int vc_s_reverse; int vc_reverse; int vc_s_blink; int vc_blink; int vc_s_underline; int vc_underline; int vc_s_italic; int vc_italic; int vc_s_intensity; int vc_intensity; int vc_saved_y; int vc_saved_x; } ;


 int gotoxy (struct vc_data*,int ,int ) ;
 int set_translate (int ,struct vc_data*) ;
 int update_attr (struct vc_data*) ;

__attribute__((used)) static void restore_cur(struct vc_data *vc)
{
 gotoxy(vc, vc->vc_saved_x, vc->vc_saved_y);
 vc->vc_intensity = vc->vc_s_intensity;
 vc->vc_italic = vc->vc_s_italic;
 vc->vc_underline = vc->vc_s_underline;
 vc->vc_blink = vc->vc_s_blink;
 vc->vc_reverse = vc->vc_s_reverse;
 vc->vc_charset = vc->vc_s_charset;
 vc->vc_color = vc->vc_s_color;
 vc->vc_G0_charset = vc->vc_saved_G0;
 vc->vc_G1_charset = vc->vc_saved_G1;
 vc->vc_translate = set_translate(vc->vc_charset ? vc->vc_G1_charset : vc->vc_G0_charset, vc);
 update_attr(vc);
 vc->vc_need_wrap = 0;
}
