
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 scalar_t__ MSG_BRIGHT ;
 scalar_t__ MSG_COLORS_START ;
 scalar_t__ MSG_ON ;
 scalar_t__ MSG_ON_BLINKING ;
 int spk_attr ;
 int spk_msg_get (scalar_t__) ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void say_attributes(struct vc_data *vc)
{
 int fg = spk_attr & 0x0f;
 int bg = spk_attr >> 4;

 if (fg > 8) {
  synth_printf("%s ", spk_msg_get(MSG_BRIGHT));
  fg -= 8;
 }
 synth_printf("%s", spk_msg_get(MSG_COLORS_START + fg));
 if (bg > 7) {
  synth_printf(" %s ", spk_msg_get(MSG_ON_BLINKING));
  bg -= 8;
 } else {
  synth_printf(" %s ", spk_msg_get(MSG_ON));
 }
 synth_printf("%s\n", spk_msg_get(MSG_COLORS_START + bg));
}
