
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int dummy; } ;


 int MSG_BLANK ;
 int * buf ;
 int get_line (struct vc_data*) ;
 int speak_char (int ) ;
 int spk_msg_get (int ) ;
 int spk_parked ;
 int spk_pos ;
 int spk_x ;
 int synth_printf (char*,int) ;

__attribute__((used)) static void say_last_char(struct vc_data *vc)
{
 int len = get_line(vc);
 u16 ch;

 spk_parked |= 0x01;
 if (len == 0) {
  synth_printf("%s\n", spk_msg_get(MSG_BLANK));
  return;
 }
 ch = buf[--len];
 spk_pos -= (spk_x - len) * 2;
 spk_x = len;
 synth_printf("%d, ", ++len);
 speak_char(ch);
}
