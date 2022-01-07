
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef size_t u_char ;
struct vc_data {int dummy; } ;
struct TYPE_2__ {short mask; } ;


 short B_NUM ;
 size_t KT_LATIN ;
 int MSG_EDIT_DONE ;
 int MSG_OFF ;
 int MSG_ON ;
 short PUNC ;
 size_t SPACE ;
 TYPE_1__* pb_edit ;
 int speak_char (size_t) ;
 short* spk_chartab ;
 int spk_msg_get (int ) ;
 int * spk_special_handler ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static int edit_bits(struct vc_data *vc, u_char type, u_char ch, u_short key)
{
 short mask = pb_edit->mask, ch_type = spk_chartab[ch];

 if (type != KT_LATIN || (ch_type & B_NUM) || ch < SPACE)
  return -1;
 if (ch == SPACE) {
  synth_printf("%s\n", spk_msg_get(MSG_EDIT_DONE));
  spk_special_handler = ((void*)0);
  return 1;
 }
 if (mask < PUNC && !(ch_type & PUNC))
  return -1;
 spk_chartab[ch] ^= mask;
 speak_char(ch);
 synth_printf(" %s\n",
       (spk_chartab[ch] & mask) ? spk_msg_get(MSG_ON) :
       spk_msg_get(MSG_OFF));
 return 1;
}
