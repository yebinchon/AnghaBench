
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct tracerouter_data* disc_data; } ;
struct tracerouter_data {int * kref_tty; } ;
struct TYPE_2__ {scalar_t__ opencalled; int * kref_tty; } ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int routelock ;
 TYPE_1__* tr_data ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_kref_put (int *) ;

__attribute__((used)) static void n_tracerouter_close(struct tty_struct *tty)
{
 struct tracerouter_data *tptr = tty->disc_data;

 mutex_lock(&routelock);
 WARN_ON(tptr->kref_tty != tr_data->kref_tty);
 tty_driver_flush_buffer(tty);
 tty_kref_put(tr_data->kref_tty);
 tr_data->kref_tty = ((void*)0);
 tr_data->opencalled = 0;
 tty->disc_data = ((void*)0);
 mutex_unlock(&routelock);
}
