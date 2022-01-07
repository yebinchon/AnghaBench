
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_8__ {int (* close ) (TYPE_2__*,int *) ;} ;


 TYPE_2__* speakup_tty ;
 int stub1 (TYPE_2__*,int *) ;
 int tty_kclose (TYPE_2__*) ;
 int tty_ldisc_flush (TYPE_2__*) ;
 int tty_lock (TYPE_2__*) ;
 int tty_unlock (TYPE_2__*) ;

void spk_ttyio_release(void)
{
 if (!speakup_tty)
  return;

 tty_lock(speakup_tty);

 if (speakup_tty->ops->close)
  speakup_tty->ops->close(speakup_tty, ((void*)0));

 tty_ldisc_flush(speakup_tty);
 tty_unlock(speakup_tty);
 tty_kclose(speakup_tty);
}
