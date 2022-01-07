
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; } ;
struct file {int dummy; } ;


 int sclp_vt220_port ;
 int tty_port_tty_set (int *,int *) ;

__attribute__((used)) static void
sclp_vt220_close(struct tty_struct *tty, struct file *filp)
{
 if (tty->count == 1)
  tty_port_tty_set(&sclp_vt220_port, ((void*)0));
}
