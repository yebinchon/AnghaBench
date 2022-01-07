
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_tty (struct tty_struct*,int) ;
 int tty_debug_hangup (struct tty_struct*,char*) ;
 int tty_flush_works (struct tty_struct*) ;
 int tty_ldisc_release (struct tty_struct*) ;
 int tty_mutex ;

void tty_release_struct(struct tty_struct *tty, int idx)
{



 tty_ldisc_release(tty);


 tty_flush_works(tty);

 tty_debug_hangup(tty, "freeing structure\n");






 mutex_lock(&tty_mutex);
 release_tty(tty, idx);
 mutex_unlock(&tty_mutex);
}
