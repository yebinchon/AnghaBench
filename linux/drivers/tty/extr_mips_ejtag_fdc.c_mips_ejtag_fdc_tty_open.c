
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;
struct file {int dummy; } ;


 int tty_port_open (int ,struct tty_struct*,struct file*) ;

__attribute__((used)) static int mips_ejtag_fdc_tty_open(struct tty_struct *tty, struct file *filp)
{
 return tty_port_open(tty->port, tty, filp);
}
