
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int currindex; int highindex; int lowindex; int command; } ;
struct TYPE_4__ {TYPE_1__ indexing; scalar_t__ alive; } ;


 int index_count ;
 TYPE_2__* synth ;
 int synth_printf (int ,int,int) ;

void synth_insert_next_index(int sent_num)
{
 int out;

 if (synth->alive) {
  if (sent_num == 0) {
   synth->indexing.currindex++;
   index_count++;
   if (synth->indexing.currindex >
     synth->indexing.highindex)
    synth->indexing.currindex =
     synth->indexing.lowindex;
  }

  out = synth->indexing.currindex * 10 + sent_num;
  synth_printf(synth->indexing.command, out, out);
 }
}
