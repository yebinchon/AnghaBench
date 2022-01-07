
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct ipw_tty* driver_data; int index; } ;
struct TYPE_2__ {scalar_t__ count; int low_latency; struct tty_struct* tty; } ;
struct ipw_tty {scalar_t__ tty_type; int ipw_tty_mutex; int network; TYPE_1__ port; scalar_t__ tx_bytes_queued; } ;
struct file {int dummy; } ;


 int ENODEV ;
 scalar_t__ TTYTYPE_MODEM ;
 struct ipw_tty* get_tty (int ) ;
 int ipwireless_ppp_open (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_open(struct tty_struct *linux_tty, struct file *filp)
{
 struct ipw_tty *tty = get_tty(linux_tty->index);

 if (!tty)
  return -ENODEV;

 mutex_lock(&tty->ipw_tty_mutex);
 if (tty->port.count == 0)
  tty->tx_bytes_queued = 0;

 tty->port.count++;

 tty->port.tty = linux_tty;
 linux_tty->driver_data = tty;
 tty->port.low_latency = 1;

 if (tty->tty_type == TTYTYPE_MODEM)
  ipwireless_ppp_open(tty->network);

 mutex_unlock(&tty->ipw_tty_mutex);

 return 0;
}
