
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* ops; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,unsigned char const*,size_t) ;} ;


 int ENOBUFS ;
 int TTY_DO_WRITE_WAKEUP ;
 int set_bit (int ,int *) ;
 int stub1 (struct tty_struct*,unsigned char const*,size_t) ;
 int tty_write_room (struct tty_struct*) ;

__attribute__((used)) static ssize_t gsmld_write(struct tty_struct *tty, struct file *file,
      const unsigned char *buf, size_t nr)
{
 int space = tty_write_room(tty);
 if (space >= nr)
  return tty->ops->write(tty, buf, nr);
 set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 return -ENOBUFS;
}
