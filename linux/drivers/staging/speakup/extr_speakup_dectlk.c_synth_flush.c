
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {TYPE_1__* io_ops; } ;
struct TYPE_2__ {int (* synth_out ) (struct spk_synth*,char) ;int (* flush_buffer ) () ;} ;


 char SYNTH_CLEAR ;
 scalar_t__ in_escape ;
 int is_flushing ;
 int stub1 (struct spk_synth*,char) ;
 int stub2 () ;
 int stub3 (struct spk_synth*,char) ;

__attribute__((used)) static void synth_flush(struct spk_synth *synth)
{
 if (in_escape)

  synth->io_ops->synth_out(synth, ']');
 in_escape = 0;
 is_flushing = 1;
 synth->io_ops->flush_buffer();
 synth->io_ops->synth_out(synth, SYNTH_CLEAR);
}
