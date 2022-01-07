
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct tty_struct* link; TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ subtype; } ;


 scalar_t__ PTY_TYPE_MASTER ;
 scalar_t__ TTY_DRIVER_TYPE_PTY ;

__attribute__((used)) static struct tty_struct *tty_pair_get_tty(struct tty_struct *tty)
{
 if (tty->driver->type == TTY_DRIVER_TYPE_PTY &&
     tty->driver->subtype == PTY_TYPE_MASTER)
  tty = tty->link;
 return tty;
}
