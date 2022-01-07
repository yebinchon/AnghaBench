
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_num; } ;


 int MSG_POS_INFO ;
 int spk_msg_get (int ) ;
 scalar_t__ spk_x ;
 scalar_t__ spk_y ;
 int synth_printf (char*,...) ;

__attribute__((used)) static void say_position(struct vc_data *vc)
{
 synth_printf(spk_msg_get(MSG_POS_INFO), spk_y + 1, spk_x + 1,
       vc->vc_num + 1);
 synth_printf("\n");
}
