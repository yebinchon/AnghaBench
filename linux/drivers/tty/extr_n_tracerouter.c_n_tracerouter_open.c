
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; TYPE_1__* disc_data; } ;
struct TYPE_2__ {int opencalled; int * kref_tty; } ;


 int EEXIST ;
 int EFAULT ;
 int RECEIVE_ROOM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int routelock ;
 TYPE_1__* tr_data ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int * tty_kref_get (struct tty_struct*) ;

__attribute__((used)) static int n_tracerouter_open(struct tty_struct *tty)
{
 int retval = -EEXIST;

 mutex_lock(&routelock);
 if (tr_data->opencalled == 0) {

  tr_data->kref_tty = tty_kref_get(tty);
  if (tr_data->kref_tty == ((void*)0)) {
   retval = -EFAULT;
  } else {
   tr_data->opencalled = 1;
   tty->disc_data = tr_data;
   tty->receive_room = RECEIVE_ROOM;
   tty_driver_flush_buffer(tty);
   retval = 0;
  }
 }
 mutex_unlock(&routelock);
 return retval;
}
