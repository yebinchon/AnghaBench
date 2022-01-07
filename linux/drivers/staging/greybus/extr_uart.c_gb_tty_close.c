
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int port; } ;
struct file {int dummy; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void gb_tty_close(struct tty_struct *tty, struct file *file)
{
 struct gb_tty *gb_tty = tty->driver_data;

 tty_port_close(&gb_tty->port, tty, file);
}
