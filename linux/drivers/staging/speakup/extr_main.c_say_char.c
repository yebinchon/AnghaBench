
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u16 ;
struct vc_data {int dummy; } ;


 int bleep (int ) ;
 int get_char (struct vc_data*,int *,scalar_t__*) ;
 int say_attributes (struct vc_data*) ;
 int speak_char (int ) ;
 scalar_t__ spk_attr ;
 int spk_attrib_bleep ;
 scalar_t__ spk_old_attr ;
 scalar_t__ spk_pos ;
 int spk_y ;

__attribute__((used)) static void say_char(struct vc_data *vc)
{
 u16 ch;

 spk_old_attr = spk_attr;
 ch = get_char(vc, (u_short *)spk_pos, &spk_attr);
 if (spk_attr != spk_old_attr) {
  if (spk_attrib_bleep & 1)
   bleep(spk_y);
  if (spk_attrib_bleep & 2)
   say_attributes(vc);
 }
 speak_char(ch);
}
