
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {int (* synth_immediate ) (struct spk_synth*,char*) ;TYPE_1__* io_ops; } ;
struct TYPE_2__ {int (* flush_buffer ) () ;} ;


 scalar_t__ in_escape ;
 int stub1 () ;
 int stub2 (struct spk_synth*,char*) ;

__attribute__((used)) static void synth_flush(struct spk_synth *synth)
{
 in_escape = 0;
 synth->io_ops->flush_buffer();
 synth->synth_immediate(synth, "\033P;10z\033\\");
}
