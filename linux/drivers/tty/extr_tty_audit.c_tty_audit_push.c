
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_audit_buf {int mutex; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int audit_tty; } ;


 int AUDIT_TTY_ENABLE ;
 int EPERM ;
 int IS_ERR_OR_NULL (struct tty_audit_buf*) ;
 TYPE_2__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_audit_buf_push (struct tty_audit_buf*) ;
 struct tty_audit_buf* tty_audit_buf_ref () ;

int tty_audit_push(void)
{
 struct tty_audit_buf *buf;

 if (~current->signal->audit_tty & AUDIT_TTY_ENABLE)
  return -EPERM;

 buf = tty_audit_buf_ref();
 if (!IS_ERR_OR_NULL(buf)) {
  mutex_lock(&buf->mutex);
  tty_audit_buf_push(buf);
  mutex_unlock(&buf->mutex);
 }
 return 0;
}
