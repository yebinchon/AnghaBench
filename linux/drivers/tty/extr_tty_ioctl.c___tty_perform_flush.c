
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct tty_ldisc* ldisc; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush_buffer ) (struct tty_struct*) ;} ;


 int EINVAL ;



 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static int __tty_perform_flush(struct tty_struct *tty, unsigned long arg)
{
 struct tty_ldisc *ld = tty->ldisc;

 switch (arg) {
 case 130:
  if (ld && ld->ops->flush_buffer) {
   ld->ops->flush_buffer(tty);
   tty_unthrottle(tty);
  }
  break;
 case 129:
  if (ld && ld->ops->flush_buffer) {
   ld->ops->flush_buffer(tty);
   tty_unthrottle(tty);
  }

 case 128:
  tty_driver_flush_buffer(tty);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
