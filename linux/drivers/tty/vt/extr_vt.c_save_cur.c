
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_G1_charset; int vc_saved_G1; int vc_G0_charset; int vc_saved_G0; int vc_color; int vc_s_color; int vc_charset; int vc_s_charset; int vc_reverse; int vc_s_reverse; int vc_blink; int vc_s_blink; int vc_underline; int vc_s_underline; int vc_italic; int vc_s_italic; int vc_intensity; int vc_s_intensity; int vc_y; int vc_saved_y; int vc_x; int vc_saved_x; } ;



__attribute__((used)) static void save_cur(struct vc_data *vc)
{
 vc->vc_saved_x = vc->vc_x;
 vc->vc_saved_y = vc->vc_y;
 vc->vc_s_intensity = vc->vc_intensity;
 vc->vc_s_italic = vc->vc_italic;
 vc->vc_s_underline = vc->vc_underline;
 vc->vc_s_blink = vc->vc_blink;
 vc->vc_s_reverse = vc->vc_reverse;
 vc->vc_s_charset = vc->vc_charset;
 vc->vc_s_color = vc->vc_color;
 vc->vc_saved_G0 = vc->vc_G0_charset;
 vc->vc_saved_G1 = vc->vc_G1_charset;
}
