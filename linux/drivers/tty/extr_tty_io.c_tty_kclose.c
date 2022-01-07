
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; int port; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_tty (struct tty_struct*,int ) ;
 int tty_debug_hangup (struct tty_struct*,char*) ;
 int tty_flush_works (struct tty_struct*) ;
 int tty_ldisc_release (struct tty_struct*) ;
 int tty_mutex ;
 int tty_port_set_kopened (int ,int ) ;

void tty_kclose(struct tty_struct *tty)
{



 tty_ldisc_release(tty);


 tty_flush_works(tty);

 tty_debug_hangup(tty, "freeing structure\n");






 mutex_lock(&tty_mutex);
 tty_port_set_kopened(tty->port, 0);
 release_tty(tty, tty->index);
 mutex_unlock(&tty_mutex);
}
