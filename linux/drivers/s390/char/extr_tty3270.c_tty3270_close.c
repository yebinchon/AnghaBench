
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; struct tty3270* driver_data; } ;
struct tty3270 {int port; } ;
struct file {int dummy; } ;


 int tty_port_tty_set (int *,int *) ;

__attribute__((used)) static void
tty3270_close(struct tty_struct *tty, struct file * filp)
{
 struct tty3270 *tp = tty->driver_data;

 if (tty->count > 1)
  return;
 if (tp)
  tty_port_tty_set(&tp->port, ((void*)0));
}
