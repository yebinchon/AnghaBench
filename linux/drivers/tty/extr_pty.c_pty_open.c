
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_2__* link; TYPE_1__* driver; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int count; int flags; } ;
struct TYPE_3__ {scalar_t__ subtype; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ PTY_TYPE_SLAVE ;
 int TTY_IO_ERROR ;
 int TTY_OTHER_CLOSED ;
 int TTY_PTY_LOCK ;
 int TTY_THROTTLED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int pty_open(struct tty_struct *tty, struct file *filp)
{
 if (!tty || !tty->link)
  return -ENODEV;

 if (test_bit(TTY_OTHER_CLOSED, &tty->flags))
  goto out;
 if (test_bit(TTY_PTY_LOCK, &tty->link->flags))
  goto out;
 if (tty->driver->subtype == PTY_TYPE_SLAVE && tty->link->count != 1)
  goto out;

 clear_bit(TTY_IO_ERROR, &tty->flags);
 clear_bit(TTY_OTHER_CLOSED, &tty->link->flags);
 set_bit(TTY_THROTTLED, &tty->flags);
 return 0;

out:
 set_bit(TTY_IO_ERROR, &tty->flags);
 return -EIO;
}
