
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ams369fg06 {int dummy; } ;


 int ARRAY_SIZE (unsigned short const**) ;
 int ams369fg06_panel_send_sequence (struct ams369fg06*,unsigned short const*) ;



__attribute__((used)) static int ams369fg06_ldi_init(struct ams369fg06 *lcd)
{
 int ret, i;
 static const unsigned short *init_seq[] = {
  129,
  128,
 };

 for (i = 0; i < ARRAY_SIZE(init_seq); i++) {
  ret = ams369fg06_panel_send_sequence(lcd, init_seq[i]);
  if (ret)
   break;
 }

 return ret;
}
