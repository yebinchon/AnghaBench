
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; int port; } ;
struct file {int dummy; } ;


 int pr_err (char*) ;
 int tty_port_close (int ,struct tty_struct*,struct file*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void vcc_close(struct tty_struct *tty, struct file *vcc_file)
{
 if (unlikely(!tty)) {
  pr_err("VCC: close: Invalid TTY handle\n");
  return;
 }

 if (unlikely(tty->count > 1))
  return;

 if (unlikely(!tty->port)) {
  pr_err("VCC: close: TTY port not found\n");
  return;
 }

 tty_port_close(tty->port, tty, vcc_file);
}
