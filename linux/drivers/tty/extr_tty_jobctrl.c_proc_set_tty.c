
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sighand; } ;
struct TYPE_3__ {int siglock; } ;


 int __proc_set_tty (struct tty_struct*) ;
 TYPE_2__* current ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void proc_set_tty(struct tty_struct *tty)
{
 spin_lock_irq(&current->sighand->siglock);
 __proc_set_tty(tty);
 spin_unlock_irq(&current->sighand->siglock);
}
