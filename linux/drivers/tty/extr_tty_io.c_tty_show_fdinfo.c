
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct seq_file {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* show_fdinfo ) (struct tty_struct*,struct seq_file*) ;} ;


 struct tty_struct* file_tty (struct file*) ;
 int stub1 (struct tty_struct*,struct seq_file*) ;

__attribute__((used)) static void tty_show_fdinfo(struct seq_file *m, struct file *file)
{
 struct tty_struct *tty = file_tty(file);

 if (tty && tty->ops && tty->ops->show_fdinfo)
  tty->ops->show_fdinfo(tty, m);
}
