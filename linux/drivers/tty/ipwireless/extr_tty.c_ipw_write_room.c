
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct ipw_tty* driver_data; } ;
struct TYPE_2__ {int count; } ;
struct ipw_tty {int tx_bytes_queued; TYPE_1__ port; } ;


 int EINVAL ;
 int ENODEV ;
 int IPWIRELESS_TX_QUEUE_SIZE ;

__attribute__((used)) static int ipw_write_room(struct tty_struct *linux_tty)
{
 struct ipw_tty *tty = linux_tty->driver_data;
 int room;


 if (!tty)
  return -ENODEV;

 if (!tty->port.count)
  return -EINVAL;

 room = IPWIRELESS_TX_QUEUE_SIZE - tty->tx_bytes_queued;
 if (room < 0)
  room = 0;

 return room;
}
