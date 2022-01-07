
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {scalar_t__ write; } ;


 int SIGTTIN ;
 int __tty_check_change (struct tty_struct*,int ) ;
 scalar_t__ redirected_tty_write ;

__attribute__((used)) static int job_control(struct tty_struct *tty, struct file *file)
{





 if (file->f_op->write == redirected_tty_write)
  return 0;

 return __tty_check_change(tty, SIGTTIN);
}
