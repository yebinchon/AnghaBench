
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int currindex; int lowindex; int highindex; } ;
struct TYPE_5__ {int (* get_index ) (TYPE_2__*) ;TYPE_1__ indexing; } ;


 int index_count ;
 int sentence_count ;
 int stub1 (TYPE_2__*) ;
 TYPE_2__* synth ;

void spk_get_index_count(int *linecount, int *sentcount)
{
 int ind = synth->get_index(synth);

 if (ind) {
  sentence_count = ind % 10;

  if ((ind / 10) <= synth->indexing.currindex)
   index_count = synth->indexing.currindex - (ind / 10);
  else
   index_count = synth->indexing.currindex
    - synth->indexing.lowindex
    + synth->indexing.highindex - (ind / 10) + 1;
 }
 *sentcount = sentence_count;
 *linecount = index_count;
}
