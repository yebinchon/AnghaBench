
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
typedef int u16 ;
struct vc_data {int dummy; } ;


 int MSG_CHAR_INFO ;
 int get_char (struct vc_data*,int *,int *) ;
 int spk_msg_get (int ) ;
 scalar_t__ spk_pos ;
 int synth_printf (int ,int ,int ) ;

__attribute__((used)) static void say_char_num(struct vc_data *vc)
{
 u_char tmp;
 u16 ch = get_char(vc, (u_short *)spk_pos, &tmp);

 synth_printf(spk_msg_get(MSG_CHAR_INFO), ch, ch);
}
