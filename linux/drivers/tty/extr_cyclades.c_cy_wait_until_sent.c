
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct cyclades_port {int xmit_fifo_size; int timeout; struct cyclades_card* card; } ;
struct cyclades_card {int dummy; } ;


 int CySRER ;
 int CyTxRdy ;
 int HZ ;
 int cy_is_Z (struct cyclades_card*) ;
 int cyy_readb (struct cyclades_port*,int ) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (int) ;
 int min (int,int) ;
 scalar_t__ msleep_interruptible (int ) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void cy_wait_until_sent(struct tty_struct *tty, int timeout)
{
 struct cyclades_card *card;
 struct cyclades_port *info = tty->driver_data;
 unsigned long orig_jiffies;
 int char_time;

 if (serial_paranoia_check(info, tty->name, "cy_wait_until_sent"))
  return;

 if (info->xmit_fifo_size == 0)
  return;

 orig_jiffies = jiffies;
 char_time = (info->timeout - HZ / 50) / info->xmit_fifo_size;
 char_time = char_time / 5;
 if (char_time <= 0)
  char_time = 1;
 if (timeout < 0)
  timeout = 0;
 if (timeout)
  char_time = min(char_time, timeout);
 if (!timeout || timeout > 2 * info->timeout)
  timeout = 2 * info->timeout;

 card = info->card;
 if (!cy_is_Z(card)) {
  while (cyy_readb(info, CySRER) & CyTxRdy) {
   if (msleep_interruptible(jiffies_to_msecs(char_time)))
    break;
   if (timeout && time_after(jiffies, orig_jiffies +
     timeout))
    break;
  }
 }

 msleep_interruptible(jiffies_to_msecs(char_time * 5));
}
