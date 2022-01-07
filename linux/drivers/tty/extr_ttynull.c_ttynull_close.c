
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;
 int ttynull_port ;

__attribute__((used)) static void ttynull_close(struct tty_struct *tty, struct file *filp)
{
 tty_port_close(&ttynull_port, tty, filp);
}
