
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int port; } ;
struct file {int dummy; } ;


 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int gb_tty_open(struct tty_struct *tty, struct file *file)
{
 struct gb_tty *gb_tty = tty->driver_data;

 return tty_port_open(&gb_tty->port, tty, file);
}
