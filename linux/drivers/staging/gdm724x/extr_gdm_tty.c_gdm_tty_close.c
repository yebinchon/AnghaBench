
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gdm* driver_data; } ;
struct gdm {int port; } ;
struct file {int dummy; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void gdm_tty_close(struct tty_struct *tty, struct file *filp)
{
 struct gdm *gdm = tty->driver_data;

 tty_port_close(&gdm->port, tty, filp);
}
