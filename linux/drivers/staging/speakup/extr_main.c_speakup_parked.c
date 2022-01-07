
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int MSG_PARKED ;
 int MSG_UNPARKED ;
 int spk_msg_get (int ) ;
 int spk_parked ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void speakup_parked(struct vc_data *vc)
{
 if (spk_parked & 0x80) {
  spk_parked = 0;
  synth_printf("%s\n", spk_msg_get(MSG_UNPARKED));
 } else {
  spk_parked |= 0x80;
  synth_printf("%s\n", spk_msg_get(MSG_PARKED));
 }
}
