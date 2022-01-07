
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {int clear; TYPE_1__* io_ops; } ;
struct TYPE_2__ {int (* synth_out ) (struct spk_synth*,int ) ;int (* flush_buffer ) () ;} ;


 int stub1 () ;
 int stub2 (struct spk_synth*,int ) ;

void spk_synth_flush(struct spk_synth *synth)
{
 synth->io_ops->flush_buffer();
 synth->io_ops->synth_out(synth, synth->clear);
}
