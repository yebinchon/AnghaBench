
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; struct mips_ejtag_fdc_tty_port* driver_data; } ;
struct mips_ejtag_fdc_tty_port {int xmit_lock; int xmit_empty; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; struct mips_ejtag_fdc_tty* driver; } ;
struct mips_ejtag_fdc_tty {int xmit_total; } ;


 int atomic_sub (scalar_t__,int *) ;
 int complete (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_port_hangup (int ) ;

__attribute__((used)) static void mips_ejtag_fdc_tty_hangup(struct tty_struct *tty)
{
 struct mips_ejtag_fdc_tty_port *dport = tty->driver_data;
 struct mips_ejtag_fdc_tty *priv = dport->driver;


 spin_lock(&dport->xmit_lock);
 if (dport->xmit_cnt) {
  atomic_sub(dport->xmit_cnt, &priv->xmit_total);
  dport->xmit_cnt = 0;
  dport->xmit_head = 0;
  dport->xmit_tail = 0;
  complete(&dport->xmit_empty);
 }
 spin_unlock(&dport->xmit_lock);

 tty_port_hangup(tty->port);
}
