
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
typedef int __u8 ;
struct TYPE_2__ {int (* receive_buf ) (struct tty_struct*,int const*,char*,int) ;} ;


 int stub1 (struct tty_struct*,int const*,char*,int) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref (struct tty_struct*) ;

__attribute__((used)) static void ldisc_receive_buf(struct tty_struct *tty,
         const __u8 *data, char *flags, int count)
{
 struct tty_ldisc *ld;
 if (!tty)
  return;
 ld = tty_ldisc_ref(tty);
 if (ld) {
  if (ld->ops->receive_buf)
   ld->ops->receive_buf(tty, data, flags, count);
  tty_ldisc_deref(ld);
 }
}
