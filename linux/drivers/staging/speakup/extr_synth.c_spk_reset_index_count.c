
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_index ) (TYPE_1__*) ;} ;


 scalar_t__ index_count ;
 int sentence_count ;
 int stub1 (TYPE_1__*) ;
 TYPE_1__* synth ;

void spk_reset_index_count(int sc)
{
 static int first = 1;

 if (first)
  first = 0;
 else
  synth->get_index(synth);
 index_count = 0;
 sentence_count = sc;
}
