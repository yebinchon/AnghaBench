
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct ipw_tty* driver_data; } ;
struct TYPE_2__ {int count; } ;
struct ipw_tty {int tx_bytes_queued; int ipw_tty_mutex; int hardware; TYPE_1__ port; } ;


 int EINVAL ;
 int ENODEV ;
 int IPWIRELESS_TX_QUEUE_SIZE ;
 int IPW_CHANNEL_RAS ;
 int ipw_write_packet_sent_callback ;
 int ipwireless_send_packet (int ,int ,unsigned char const*,int,int ,struct ipw_tty*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_write(struct tty_struct *linux_tty,
       const unsigned char *buf, int count)
{
 struct ipw_tty *tty = linux_tty->driver_data;
 int room, ret;

 if (!tty)
  return -ENODEV;

 mutex_lock(&tty->ipw_tty_mutex);
 if (!tty->port.count) {
  mutex_unlock(&tty->ipw_tty_mutex);
  return -EINVAL;
 }

 room = IPWIRELESS_TX_QUEUE_SIZE - tty->tx_bytes_queued;
 if (room < 0)
  room = 0;

 if (count > room)
  count = room;

 if (count == 0) {
  mutex_unlock(&tty->ipw_tty_mutex);
  return 0;
 }

 ret = ipwireless_send_packet(tty->hardware, IPW_CHANNEL_RAS,
          buf, count,
          ipw_write_packet_sent_callback, tty);
 if (ret == -1) {
  mutex_unlock(&tty->ipw_tty_mutex);
  return 0;
 }

 tty->tx_bytes_queued += count;
 mutex_unlock(&tty->ipw_tty_mutex);

 return count;
}
