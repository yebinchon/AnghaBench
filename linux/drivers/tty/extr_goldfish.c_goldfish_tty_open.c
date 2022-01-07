
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {size_t index; } ;
struct goldfish_tty {int port; } ;
struct file {int dummy; } ;


 struct goldfish_tty* goldfish_ttys ;
 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int goldfish_tty_open(struct tty_struct *tty, struct file *filp)
{
 struct goldfish_tty *qtty = &goldfish_ttys[tty->index];
 return tty_port_open(&qtty->port, tty, filp);
}
