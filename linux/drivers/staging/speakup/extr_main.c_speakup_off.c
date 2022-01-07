
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int MSG_HEY_THATS_BETTER ;
 int MSG_YOU_TURNED_ME_OFF ;
 int speakup_date (struct vc_data*) ;
 int spk_msg_get (int ) ;
 int spk_shut_up ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void speakup_off(struct vc_data *vc)
{
 if (spk_shut_up & 0x80) {
  spk_shut_up &= 0x7f;
  synth_printf("%s\n", spk_msg_get(MSG_HEY_THATS_BETTER));
 } else {
  spk_shut_up |= 0x80;
  synth_printf("%s\n", spk_msg_get(MSG_YOU_TURNED_ME_OFF));
 }
 speakup_date(vc);
}
