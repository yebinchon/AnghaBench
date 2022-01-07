
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;
typedef int u_char ;
typedef int u16 ;
struct vc_data {int vc_cols; } ;


 scalar_t__ IS_WDLM (int) ;
 int MSG_SPACE ;
 int SPACE ;
 int* buf ;
 int get_char (struct vc_data*,int *,int *) ;
 int spk_attr ;
 int spk_msg_get (int ) ;
 int spk_old_attr ;
 int spk_pos ;
 scalar_t__ spk_say_word_ctl ;
 int spk_x ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static u_long get_word(struct vc_data *vc)
{
 u_long cnt = 0, tmpx = spk_x, tmp_pos = spk_pos;
 u16 ch;
 u16 attr_ch;
 u_char temp;

 spk_old_attr = spk_attr;
 ch = get_char(vc, (u_short *)tmp_pos, &temp);


 if (spk_say_word_ctl && ch == SPACE) {
  *buf = '\0';
  synth_printf("%s\n", spk_msg_get(MSG_SPACE));
  return 0;
 } else if (tmpx < vc->vc_cols - 2 &&
     (ch == SPACE || ch == 0 || (ch < 0x100 && IS_WDLM(ch))) &&
     get_char(vc, (u_short *)&tmp_pos + 1, &temp) > SPACE) {
  tmp_pos += 2;
  tmpx++;
 } else {
  while (tmpx > 0) {
   ch = get_char(vc, (u_short *)tmp_pos - 1, &temp);
   if ((ch == SPACE || ch == 0 ||
        (ch < 0x100 && IS_WDLM(ch))) &&
       get_char(vc, (u_short *)tmp_pos, &temp) > SPACE)
    break;
   tmp_pos -= 2;
   tmpx--;
  }
 }
 attr_ch = get_char(vc, (u_short *)tmp_pos, &spk_attr);
 buf[cnt++] = attr_ch;
 while (tmpx < vc->vc_cols - 1) {
  tmp_pos += 2;
  tmpx++;
  ch = get_char(vc, (u_short *)tmp_pos, &temp);
  if (ch == SPACE || ch == 0 ||
      (buf[cnt - 1] < 0x100 && IS_WDLM(buf[cnt - 1]) &&
       ch > SPACE))
   break;
  buf[cnt++] = ch;
 }
 buf[cnt] = '\0';
 return cnt;
}
