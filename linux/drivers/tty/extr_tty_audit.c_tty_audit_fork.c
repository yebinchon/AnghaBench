
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct signal_struct {int audit_tty; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int audit_tty; } ;


 TYPE_2__* current ;

void tty_audit_fork(struct signal_struct *sig)
{
 sig->audit_tty = current->signal->audit_tty;
}
