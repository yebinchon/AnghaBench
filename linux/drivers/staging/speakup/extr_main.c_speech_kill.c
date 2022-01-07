
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_3__ {char (* is_alive ) (TYPE_1__*) ;} ;


 int MSG_IAM_ALIVE ;
 int MSG_YOU_KILLED_SPEAKUP ;
 scalar_t__ spk_killed ;
 int spk_msg_get (int ) ;
 int spk_shut_up ;
 char stub1 (TYPE_1__*) ;
 TYPE_1__* synth ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void speech_kill(struct vc_data *vc)
{
 char val = synth->is_alive(synth);

 if (val == 0)
  return;


 if (val == 2 || spk_killed) {

  spk_shut_up &= ~0x40;
  synth_printf("%s\n", spk_msg_get(MSG_IAM_ALIVE));
 } else {
  synth_printf("%s\n", spk_msg_get(MSG_YOU_KILLED_SPEAKUP));
  spk_shut_up |= 0x40;
 }
}
