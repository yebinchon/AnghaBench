
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_tty {int mutex; int port; scalar_t__ disconnected; } ;


 struct gb_tty* idr_find (int *,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int table_lock ;
 int tty_minors ;
 int tty_port_get (int *) ;

__attribute__((used)) static struct gb_tty *get_gb_by_minor(unsigned int minor)
{
 struct gb_tty *gb_tty;

 mutex_lock(&table_lock);
 gb_tty = idr_find(&tty_minors, minor);
 if (gb_tty) {
  mutex_lock(&gb_tty->mutex);
  if (gb_tty->disconnected) {
   mutex_unlock(&gb_tty->mutex);
   gb_tty = ((void*)0);
  } else {
   tty_port_get(&gb_tty->port);
   mutex_unlock(&gb_tty->mutex);
  }
 }
 mutex_unlock(&table_lock);
 return gb_tty;
}
