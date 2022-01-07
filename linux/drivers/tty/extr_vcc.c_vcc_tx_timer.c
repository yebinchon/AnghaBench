
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int stype; int type; } ;
struct vio_vcc {TYPE_2__ tag; } ;
struct TYPE_6__ {int lp; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct vcc_port {int lock; scalar_t__ chars_in_buffer; struct tty_struct* tty; TYPE_3__ vio; struct vio_vcc buffer; scalar_t__ removed; TYPE_1__ tx_timer; } ;
struct tty_struct {int dummy; } ;
struct timer_list {int dummy; } ;


 int VCC_BUFF_LEN ;
 scalar_t__ VIO_TAG_SIZE ;
 int VIO_TYPE_DATA ;
 int WARN_ON (int) ;
 struct vcc_port* from_timer (int ,struct timer_list*,int ) ;
 int ldc_write (int ,struct vio_vcc*,scalar_t__) ;
 int min (int ,scalar_t__) ;
 struct vcc_port* port ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;
 int tx_timer ;
 int vcc_kick_tx (struct vcc_port*) ;
 int vcc_put (struct vcc_port*,int) ;
 int vccdbg (char*,int) ;
 int vccdbgl (int ) ;

__attribute__((used)) static void vcc_tx_timer(struct timer_list *t)
{
 struct vcc_port *port = from_timer(port, t, tx_timer);
 struct vio_vcc *pkt;
 unsigned long flags;
 int tosend = 0;
 int rv;

 spin_lock_irqsave(&port->lock, flags);
 port->tx_timer.expires = 0;

 if (!port->tty || port->removed)
  goto done;

 tosend = min(VCC_BUFF_LEN, port->chars_in_buffer);
 if (!tosend)
  goto done;

 pkt = &port->buffer;
 pkt->tag.type = VIO_TYPE_DATA;
 pkt->tag.stype = tosend;
 vccdbgl(port->vio.lp);

 rv = ldc_write(port->vio.lp, pkt, (VIO_TAG_SIZE + tosend));
 WARN_ON(!rv);

 if (rv < 0) {
  vccdbg("VCC: ldc_write()=%d\n", rv);
  vcc_kick_tx(port);
 } else {
  struct tty_struct *tty = port->tty;

  port->chars_in_buffer = 0;
  if (tty)
   tty_wakeup(tty);
 }

done:
 spin_unlock_irqrestore(&port->lock, flags);
 vcc_put(port, 0);
}
