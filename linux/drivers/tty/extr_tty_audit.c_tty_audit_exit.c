
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_audit_buf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int tty_audit_buf; } ;


 int ERR_PTR (int ) ;
 int ESRCH ;
 TYPE_2__* current ;
 int tty_audit_buf_free (struct tty_audit_buf*) ;
 int tty_audit_buf_push (struct tty_audit_buf*) ;
 struct tty_audit_buf* xchg (int *,int ) ;

void tty_audit_exit(void)
{
 struct tty_audit_buf *buf;

 buf = xchg(&current->signal->tty_audit_buf, ERR_PTR(-ESRCH));
 if (!buf)
  return;

 tty_audit_buf_push(buf);
 tty_audit_buf_free(buf);
}
