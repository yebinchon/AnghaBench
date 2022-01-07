
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_audit_buf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int tty_audit_buf; } ;


 int audit_log_lost (char*) ;
 int * cmpxchg (int *,int *,struct tty_audit_buf*) ;
 TYPE_2__* current ;
 struct tty_audit_buf* tty_audit_buf_alloc () ;
 int tty_audit_buf_free (struct tty_audit_buf*) ;
 struct tty_audit_buf* tty_audit_buf_ref () ;

__attribute__((used)) static struct tty_audit_buf *tty_audit_buf_get(void)
{
 struct tty_audit_buf *buf;

 buf = tty_audit_buf_ref();
 if (buf)
  return buf;

 buf = tty_audit_buf_alloc();
 if (buf == ((void*)0)) {
  audit_log_lost("out of memory in TTY auditing");
  return ((void*)0);
 }


 if (cmpxchg(&current->signal->tty_audit_buf, ((void*)0), buf) != ((void*)0))
  tty_audit_buf_free(buf);
 return tty_audit_buf_ref();
}
