
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_audit_buf {scalar_t__ valid; struct tty_audit_buf* data; } ;


 int WARN_ON (int) ;
 int kfree (struct tty_audit_buf*) ;

__attribute__((used)) static void tty_audit_buf_free(struct tty_audit_buf *buf)
{
 WARN_ON(buf->valid != 0);
 kfree(buf->data);
 kfree(buf);
}
