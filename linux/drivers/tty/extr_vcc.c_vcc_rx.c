
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;


 scalar_t__ WARN_ON (int) ;
 int tty_flip_buffer_push (int ) ;
 int tty_insert_flip_string (int ,char*,int) ;

__attribute__((used)) static int vcc_rx(struct tty_struct *tty, char *buf, int size)
{
 int len = 0;

 if (WARN_ON(!tty || !tty->port))
  return len;

 len = tty_insert_flip_string(tty->port, buf, size);
 if (len)
  tty_flip_buffer_push(tty->port);

 return len;
}
