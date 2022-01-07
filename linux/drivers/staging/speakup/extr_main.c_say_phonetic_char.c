
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u16 ;
struct vc_data {int dummy; } ;


 int B_NUM ;
 scalar_t__ IS_CHAR (int,int ) ;
 int MSG_NUMBER ;
 int get_char (struct vc_data*,int *,int *) ;
 scalar_t__ isalpha (int) ;
 int * phonetic ;
 int speak_char (int) ;
 int spk_attr ;
 int spk_msg_get (int ) ;
 int spk_old_attr ;
 scalar_t__ spk_pos ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void say_phonetic_char(struct vc_data *vc)
{
 u16 ch;

 spk_old_attr = spk_attr;
 ch = get_char(vc, (u_short *)spk_pos, &spk_attr);
 if (ch <= 0x7f && isalpha(ch)) {
  ch &= 0x1f;
  synth_printf("%s\n", phonetic[--ch]);
 } else {
  if (ch < 0x100 && IS_CHAR(ch, B_NUM))
   synth_printf("%s ", spk_msg_get(MSG_NUMBER));
  speak_char(ch);
 }
}
