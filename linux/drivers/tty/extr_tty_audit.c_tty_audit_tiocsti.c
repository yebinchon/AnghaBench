
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ index; TYPE_1__* driver; } ;
typedef scalar_t__ dev_t ;
struct TYPE_2__ {int minor_start; int major; } ;


 scalar_t__ MKDEV (int ,int ) ;
 scalar_t__ audit_enabled ;
 int tty_audit_log (char*,scalar_t__,char*,int) ;
 scalar_t__ tty_audit_push () ;

void tty_audit_tiocsti(struct tty_struct *tty, char ch)
{
 dev_t dev;

 dev = MKDEV(tty->driver->major, tty->driver->minor_start) + tty->index;
 if (tty_audit_push())
  return;

 if (audit_enabled)
  tty_audit_log("ioctl=TIOCSTI", dev, &ch, 1);
}
