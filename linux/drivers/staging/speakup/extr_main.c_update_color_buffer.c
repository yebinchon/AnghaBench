
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {int vc_num; int vc_attr; int vc_y; int vc_x; int vc_pos; } ;
struct TYPE_3__ {int* highsize; int** highbuf; int * ry; int * rx; int * rpos; } ;
struct TYPE_4__ {TYPE_1__ ht; } ;


 int COLOR_BUFFER_SIZE ;
 TYPE_2__** speakup_console ;

__attribute__((used)) static void update_color_buffer(struct vc_data *vc, const u16 *ic, int len)
{
 int i, bi, hi;
 int vc_num = vc->vc_num;

 bi = (vc->vc_attr & 0x70) >> 4;
 hi = speakup_console[vc_num]->ht.highsize[bi];

 i = 0;
 if (speakup_console[vc_num]->ht.highsize[bi] == 0) {
  speakup_console[vc_num]->ht.rpos[bi] = vc->vc_pos;
  speakup_console[vc_num]->ht.rx[bi] = vc->vc_x;
  speakup_console[vc_num]->ht.ry[bi] = vc->vc_y;
 }
 while ((hi < COLOR_BUFFER_SIZE) && (i < len)) {
  if (ic[i] > 32) {
   speakup_console[vc_num]->ht.highbuf[bi][hi] = ic[i];
   hi++;
  } else if ((ic[i] == 32) && (hi != 0)) {
   if (speakup_console[vc_num]->ht.highbuf[bi][hi - 1] !=
       32) {
    speakup_console[vc_num]->ht.highbuf[bi][hi] =
        ic[i];
    hi++;
   }
  }
  i++;
 }
 speakup_console[vc_num]->ht.highsize[bi] = hi;
}
