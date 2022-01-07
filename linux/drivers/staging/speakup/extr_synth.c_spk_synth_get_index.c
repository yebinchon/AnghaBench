
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {TYPE_1__* io_ops; } ;
struct TYPE_2__ {unsigned char (* synth_in_nowait ) () ;} ;


 unsigned char stub1 () ;

unsigned char spk_synth_get_index(struct spk_synth *synth)
{
 return synth->io_ops->synth_in_nowait();
}
