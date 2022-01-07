
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 int tty_port_open (int *,struct tty_struct*,struct file*) ;
 int ttynull_port ;

__attribute__((used)) static int ttynull_open(struct tty_struct *tty, struct file *filp)
{
 return tty_port_open(&ttynull_port, tty, filp);
}
