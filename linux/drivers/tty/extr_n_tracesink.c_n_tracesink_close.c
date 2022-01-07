
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * disc_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * this_tty ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_kref_put (int *) ;
 int writelock ;

__attribute__((used)) static void n_tracesink_close(struct tty_struct *tty)
{
 mutex_lock(&writelock);
 tty_driver_flush_buffer(tty);
 tty_kref_put(this_tty);
 this_tty = ((void*)0);
 tty->disc_data = ((void*)0);
 mutex_unlock(&writelock);
}
