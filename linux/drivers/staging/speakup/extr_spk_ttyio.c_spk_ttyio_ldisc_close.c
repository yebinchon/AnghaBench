
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {int disc_data; } ;


 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* speakup_tty ;
 int speakup_tty_mutex ;

__attribute__((used)) static void spk_ttyio_ldisc_close(struct tty_struct *tty)
{
 mutex_lock(&speakup_tty_mutex);
 kfree(speakup_tty->disc_data);
 speakup_tty = ((void*)0);
 mutex_unlock(&speakup_tty_mutex);
}
