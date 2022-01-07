
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; int flags; } ;


 int TTY_THROTTLED ;
 scalar_t__ VCC_BUFF_LEN ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ tty_buffer_request_room (int ,scalar_t__) ;

__attribute__((used)) static int vcc_rx_check(struct tty_struct *tty, int size)
{
 if (WARN_ON(!tty || !tty->port))
  return 1;




 if (test_bit(TTY_THROTTLED, &tty->flags) ||
     (tty_buffer_request_room(tty->port, VCC_BUFF_LEN) < VCC_BUFF_LEN))
  return 0;

 return 1;
}
