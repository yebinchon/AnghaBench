
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ alive; int long_name; } ;


 int pr_warn (char*,int ) ;
 int speakup_start_ttys () ;
 TYPE_1__* spk_ttyio_synth ;

__attribute__((used)) static int check_tty(struct tty_struct *tty)
{
 if (!tty) {
  pr_warn("%s: I/O error, deactivating speakup\n",
   spk_ttyio_synth->long_name);




  spk_ttyio_synth->alive = 0;
  speakup_start_ttys();
  return 1;
 }

 return 0;
}
