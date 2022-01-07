
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_SPEAKUP ;
 int pr_warn (char*) ;
 int spk_ttyio_ldisc_ops ;
 scalar_t__ tty_register_ldisc (int ,int *) ;

void spk_ttyio_register_ldisc(void)
{
 if (tty_register_ldisc(N_SPEAKUP, &spk_ttyio_ldisc_ops))
  pr_warn("speakup: Error registering line discipline. Most synths won't work.\n");
}
