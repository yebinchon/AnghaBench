
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct file {int dummy; } ;
struct acm {int port; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void acm_tty_close(struct tty_struct *tty, struct file *filp)
{
 struct acm *acm = tty->driver_data;

 tty_port_close(&acm->port, tty, filp);
}
