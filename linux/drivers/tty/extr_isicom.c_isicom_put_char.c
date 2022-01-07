
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct isi_port* driver_data; } ;
struct TYPE_2__ {unsigned char* xmit_buf; } ;
struct isi_port {int xmit_cnt; int xmit_head; TYPE_1__ port; struct isi_board* card; } ;
struct isi_board {int card_lock; } ;


 int SERIAL_XMIT_SIZE ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int isicom_put_char(struct tty_struct *tty, unsigned char ch)
{
 struct isi_port *port = tty->driver_data;
 struct isi_board *card = port->card;
 unsigned long flags;

 if (isicom_paranoia_check(port, tty->name, "isicom_put_char"))
  return 0;

 spin_lock_irqsave(&card->card_lock, flags);
 if (port->xmit_cnt >= SERIAL_XMIT_SIZE - 1) {
  spin_unlock_irqrestore(&card->card_lock, flags);
  return 0;
 }

 port->port.xmit_buf[port->xmit_head++] = ch;
 port->xmit_head &= (SERIAL_XMIT_SIZE - 1);
 port->xmit_cnt++;
 spin_unlock_irqrestore(&card->card_lock, flags);
 return 1;
}
