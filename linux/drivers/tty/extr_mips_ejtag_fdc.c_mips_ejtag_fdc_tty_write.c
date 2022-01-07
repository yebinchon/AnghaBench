
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct mips_ejtag_fdc_tty_port* driver_data; } ;
struct TYPE_2__ {scalar_t__ xmit_buf; } ;
struct mips_ejtag_fdc_tty_port {int xmit_cnt; scalar_t__ xmit_head; int xmit_lock; int xmit_empty; TYPE_1__ port; struct mips_ejtag_fdc_tty* driver; } ;
struct mips_ejtag_fdc_tty {scalar_t__ xmit_size; int waitqueue; int xmit_total; } ;


 int atomic_add (int,int *) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int min (int,int) ;
 int reinit_completion (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int mips_ejtag_fdc_tty_write(struct tty_struct *tty,
        const unsigned char *buf, int total)
{
 int count, block;
 struct mips_ejtag_fdc_tty_port *dport = tty->driver_data;
 struct mips_ejtag_fdc_tty *priv = dport->driver;
 spin_lock(&dport->xmit_lock);

 total = min(total, (int)(priv->xmit_size - dport->xmit_cnt));
 atomic_add(total, &priv->xmit_total);
 dport->xmit_cnt += total;

 for (count = total; count; count -= block) {
  block = min(count, (int)(priv->xmit_size - dport->xmit_head));
  memcpy(dport->port.xmit_buf + dport->xmit_head, buf, block);
  dport->xmit_head += block;
  if (dport->xmit_head >= priv->xmit_size)
   dport->xmit_head -= priv->xmit_size;
  buf += block;
 }
 count = dport->xmit_cnt;

 if (count)
  reinit_completion(&dport->xmit_empty);
 spin_unlock(&dport->xmit_lock);


 if (total)
  wake_up_interruptible(&priv->waitqueue);
 return total;
}
