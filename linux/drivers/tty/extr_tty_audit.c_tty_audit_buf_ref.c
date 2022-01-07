
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_audit_buf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {struct tty_audit_buf* tty_audit_buf; } ;


 struct tty_audit_buf* ERR_PTR (int ) ;
 int ESRCH ;
 int WARN_ON (int) ;
 TYPE_2__* current ;

__attribute__((used)) static struct tty_audit_buf *tty_audit_buf_ref(void)
{
 struct tty_audit_buf *buf;

 buf = current->signal->tty_audit_buf;
 WARN_ON(buf == ERR_PTR(-ESRCH));
 return buf;
}
