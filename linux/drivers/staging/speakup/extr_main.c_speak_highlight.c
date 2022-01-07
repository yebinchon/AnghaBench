
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int vc_num; int vc_y; } ;
struct TYPE_3__ {int cy; scalar_t__* ry; int * rx; int * rpos; int * highsize; int * highbuf; } ;
struct TYPE_4__ {TYPE_1__ ht; } ;


 int count_highlight_color (struct vc_data*) ;
 int get_highlight_color (struct vc_data*) ;
 TYPE_2__** speakup_console ;
 int spk_cp ;
 int spk_cx ;
 scalar_t__ spk_cy ;
 int spk_do_flush () ;
 int spk_parked ;
 int spk_pos ;
 int spk_x ;
 scalar_t__ spk_y ;
 int spkup_write (int ,int ) ;

__attribute__((used)) static int speak_highlight(struct vc_data *vc)
{
 int hc, d;
 int vc_num = vc->vc_num;

 if (count_highlight_color(vc) == 1)
  return 0;
 hc = get_highlight_color(vc);
 if (hc != -1) {
  d = vc->vc_y - speakup_console[vc_num]->ht.cy;
  if ((d == 1) || (d == -1))
   if (speakup_console[vc_num]->ht.ry[hc] != vc->vc_y)
    return 0;
  spk_parked |= 0x01;
  spk_do_flush();
  spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
       speakup_console[vc_num]->ht.highsize[hc]);
  spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
  spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
  spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
  return 1;
 }
 return 0;
}
