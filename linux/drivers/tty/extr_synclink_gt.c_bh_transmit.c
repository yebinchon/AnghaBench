
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct slgt_info {int device_name; TYPE_1__ port; } ;


 int DBGBH (char*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void bh_transmit(struct slgt_info *info)
{
 struct tty_struct *tty = info->port.tty;

 DBGBH(("%s bh_transmit\n", info->device_name));
 if (tty)
  tty_wakeup(tty);
}
