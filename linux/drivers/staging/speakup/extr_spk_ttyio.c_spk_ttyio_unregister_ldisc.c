
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_SPEAKUP ;
 int pr_warn (char*) ;
 scalar_t__ tty_unregister_ldisc (int ) ;

void spk_ttyio_unregister_ldisc(void)
{
 if (tty_unregister_ldisc(N_SPEAKUP))
  pr_warn("speakup: Couldn't unregister ldisc\n");
}
