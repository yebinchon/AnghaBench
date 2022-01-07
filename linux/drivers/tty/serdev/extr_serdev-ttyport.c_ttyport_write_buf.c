
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; int flags; } ;
struct serport {struct tty_struct* tty; int flags; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,unsigned char const*,size_t) ;} ;


 int SERPORT_ACTIVE ;
 int TTY_DO_WRITE_WAKEUP ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct tty_struct*,unsigned char const*,size_t) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ttyport_write_buf(struct serdev_controller *ctrl, const unsigned char *data, size_t len)
{
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty = serport->tty;

 if (!test_bit(SERPORT_ACTIVE, &serport->flags))
  return 0;

 set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 return tty->ops->write(serport->tty, data, len);
}
