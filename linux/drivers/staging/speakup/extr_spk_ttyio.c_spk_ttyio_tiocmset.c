
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* tiocmset ) (TYPE_2__*,unsigned int,unsigned int) ;} ;


 scalar_t__ check_tty (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* speakup_tty ;
 int speakup_tty_mutex ;
 int stub1 (TYPE_2__*,unsigned int,unsigned int) ;

__attribute__((used)) static void spk_ttyio_tiocmset(unsigned int set, unsigned int clear)
{
 mutex_lock(&speakup_tty_mutex);
 if (check_tty(speakup_tty)) {
  mutex_unlock(&speakup_tty_mutex);
  return;
 }

 if (speakup_tty->ops->tiocmset)
  speakup_tty->ops->tiocmset(speakup_tty, set, clear);
 mutex_unlock(&speakup_tty_mutex);
}
