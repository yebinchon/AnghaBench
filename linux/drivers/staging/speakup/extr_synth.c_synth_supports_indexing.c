
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ get_index; } ;


 TYPE_1__* synth ;

int synth_supports_indexing(void)
{
 if (synth->get_index)
  return 1;
 return 0;
}
