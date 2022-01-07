
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {int long_name; TYPE_1__* io_ops; int (* synth_immediate ) (struct spk_synth*,char*) ;} ;
struct TYPE_2__ {char (* synth_in ) () ;} ;


 int pr_info (char*,int ,char*) ;
 int stub1 (struct spk_synth*,char*) ;
 char stub2 () ;
 char stub3 () ;

__attribute__((used)) static void synth_version(struct spk_synth *synth)
{
 unsigned char test = 0;
 char synth_id[40] = "";

 synth->synth_immediate(synth, "\x05[Q]");
 synth_id[test] = synth->io_ops->synth_in();
 if (synth_id[test] == 'A') {
  do {

   synth_id[++test] = synth->io_ops->synth_in();
  } while (synth_id[test] != '\n' && test < 32);
  synth_id[++test] = 0x00;
 }
 if (synth_id[0] == 'A')
  pr_info("%s version: %s", synth->long_name, synth_id);
}
