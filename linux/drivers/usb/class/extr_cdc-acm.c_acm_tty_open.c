
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct file {int dummy; } ;
struct acm {int port; } ;


 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int acm_tty_open(struct tty_struct *tty, struct file *filp)
{
 struct acm *acm = tty->driver_data;

 return tty_port_open(&acm->port, tty, filp);
}
