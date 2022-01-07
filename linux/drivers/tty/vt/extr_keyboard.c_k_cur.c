
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int VC_CKMODE ;
 int applkey (struct vc_data*,char const,int ) ;
 int kbd ;
 int vc_kbd_mode (int ,int ) ;

__attribute__((used)) static void k_cur(struct vc_data *vc, unsigned char value, char up_flag)
{
 static const char cur_chars[] = "BDCA";

 if (up_flag)
  return;

 applkey(vc, cur_chars[value], vc_kbd_mode(kbd, VC_CKMODE));
}
