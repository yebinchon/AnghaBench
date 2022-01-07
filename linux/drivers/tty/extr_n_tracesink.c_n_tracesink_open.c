
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * disc_data; } ;


 int EEXIST ;
 int EFAULT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * this_tty ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int * tty_kref_get (struct tty_struct*) ;
 int writelock ;

__attribute__((used)) static int n_tracesink_open(struct tty_struct *tty)
{
 int retval = -EEXIST;

 mutex_lock(&writelock);
 if (this_tty == ((void*)0)) {
  this_tty = tty_kref_get(tty);
  if (this_tty == ((void*)0)) {
   retval = -EFAULT;
  } else {
   tty->disc_data = this_tty;
   tty_driver_flush_buffer(tty);
   retval = 0;
  }
 }
 mutex_unlock(&writelock);

 return retval;
}
