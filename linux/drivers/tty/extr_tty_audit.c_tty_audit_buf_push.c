
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_audit_buf {scalar_t__ valid; int data; int dev; } ;


 scalar_t__ AUDIT_OFF ;
 scalar_t__ audit_enabled ;
 int tty_audit_log (char*,int ,int ,scalar_t__) ;

__attribute__((used)) static void tty_audit_buf_push(struct tty_audit_buf *buf)
{
 if (buf->valid == 0)
  return;
 if (audit_enabled == AUDIT_OFF) {
  buf->valid = 0;
  return;
 }
 tty_audit_log("tty", buf->dev, buf->data, buf->valid);
 buf->valid = 0;
}
