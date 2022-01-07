
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u16 ;
struct vc_data {int dummy; } ;


 int MSG_BLANK ;
 scalar_t__ SAY_LINE_INDENT ;
 scalar_t__ SPACE ;
 scalar_t__* buf ;
 int get_line (struct vc_data*) ;
 int spk_msg_get (int ) ;
 int spk_punc_mask ;
 int * spk_punc_masks ;
 size_t spk_reading_punc ;
 int spkup_write (scalar_t__*,int) ;
 int synth_printf (char*,int) ;
 scalar_t__ this_speakup_key ;

__attribute__((used)) static void say_line(struct vc_data *vc)
{
 int i = get_line(vc);
 u16 *cp;
 u_short saved_punc_mask = spk_punc_mask;

 if (i == 0) {
  synth_printf("%s\n", spk_msg_get(MSG_BLANK));
  return;
 }
 buf[i++] = '\n';
 if (this_speakup_key == SAY_LINE_INDENT) {
  cp = buf;
  while (*cp == SPACE)
   cp++;
  synth_printf("%zd, ", (cp - buf) + 1);
 }
 spk_punc_mask = spk_punc_masks[spk_reading_punc];
 spkup_write(buf, i);
 spk_punc_mask = saved_punc_mask;
}
