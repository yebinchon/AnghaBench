
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_tty {int minor; } ;


 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int table_lock ;
 int tty_minors ;

__attribute__((used)) static void release_minor(struct gb_tty *gb_tty)
{
 int minor = gb_tty->minor;

 gb_tty->minor = 0;
 mutex_lock(&table_lock);
 idr_remove(&tty_minors, minor);
 mutex_unlock(&table_lock);
}
