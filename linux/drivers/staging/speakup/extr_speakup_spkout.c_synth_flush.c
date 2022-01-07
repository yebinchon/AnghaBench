
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {TYPE_1__* io_ops; } ;
struct TYPE_2__ {int (* send_xchar ) (int ) ;int (* flush_buffer ) () ;} ;


 int SYNTH_CLEAR ;
 int stub1 () ;
 int stub2 (int ) ;

__attribute__((used)) static void synth_flush(struct spk_synth *synth)
{
 synth->io_ops->flush_buffer();
 synth->io_ops->send_xchar(SYNTH_CLEAR);
}
