
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int vc_num; } ;
struct TYPE_3__ {scalar_t__* highsize; } ;
struct TYPE_4__ {TYPE_1__ ht; } ;


 TYPE_2__** speakup_console ;

__attribute__((used)) static void reset_highlight_buffers(struct vc_data *vc)
{
 int i;
 int vc_num = vc->vc_num;

 for (i = 0; i < 8; i++)
  speakup_console[vc_num]->ht.highsize[i] = 0;
}
