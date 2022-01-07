
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zs_scc {int zlock; struct zs_port* zport; } ;
struct zs_port {int dummy; } ;
typedef int irqreturn_t ;


 int CHAEXT ;
 int CHARxIP ;
 int CHATxIP ;
 int CHBEXT ;
 int CHBRxIP ;
 int CHBTxIP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int R3 ;
 size_t ZS_CHAN_A ;
 size_t ZS_CHAN_B ;
 int read_zsreg (struct zs_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zs_receive_chars (struct zs_port*) ;
 int zs_status_handle (struct zs_port*,struct zs_port*) ;
 int zs_transmit_chars (struct zs_port*) ;

__attribute__((used)) static irqreturn_t zs_interrupt(int irq, void *dev_id)
{
 struct zs_scc *scc = dev_id;
 struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];
 struct zs_port *zport_b = &scc->zport[ZS_CHAN_B];
 irqreturn_t status = IRQ_NONE;
 u8 zs_intreg;
 int count;
 for (count = 16; count; count--) {
  spin_lock(&scc->zlock);
  zs_intreg = read_zsreg(zport_a, R3);
  spin_unlock(&scc->zlock);
  if (!zs_intreg)
   break;






  if (zs_intreg & CHBRxIP)
   zs_receive_chars(zport_b);
  if (zs_intreg & CHARxIP)
   zs_receive_chars(zport_a);
  if (zs_intreg & CHBEXT)
   zs_status_handle(zport_b, zport_a);
  if (zs_intreg & CHAEXT)
   zs_status_handle(zport_a, zport_a);
  if (zs_intreg & CHBTxIP)
   zs_transmit_chars(zport_b);
  if (zs_intreg & CHATxIP)
   zs_transmit_chars(zport_a);

  status = IRQ_HANDLED;
 }

 return status;
}
