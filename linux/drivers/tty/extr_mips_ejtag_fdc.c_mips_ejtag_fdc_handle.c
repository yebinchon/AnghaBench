
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mips_ejtag_fdc_tty_port {int rx_lock; int port; int rx_buf; } ;
struct mips_ejtag_fdc_tty {int sysrq_pressed; int xmit_full; int lock; int waitqueue; int driver_name; int dev; struct mips_ejtag_fdc_tty_port* ports; } ;
struct TYPE_3__ {unsigned int index; } ;
struct TYPE_4__ {TYPE_1__ cons; } ;


 unsigned int CONFIG_MIPS_EJTAG_FDC_KGDB_CHAN ;
 int REG_FDCFG ;
 unsigned int REG_FDCFG_TXINTTHRES ;
 unsigned int REG_FDCFG_TXINTTHRES_DISABLED ;
 int REG_FDRX ;
 int REG_FDSTAT ;
 unsigned int REG_FDSTAT_RXCHAN ;
 unsigned int REG_FDSTAT_RXCHAN_SHIFT ;
 unsigned int REG_FDSTAT_RXE ;
 unsigned int REG_FDSTAT_TXF ;
 int TTY_NORMAL ;
 int dev_dbg (int ,char*,int ,unsigned int,unsigned int,int,char*) ;
 int handle_sysrq (char) ;
 TYPE_2__ mips_ejtag_fdc_con ;
 int mips_ejtag_fdc_decode (unsigned int,char*) ;
 unsigned int mips_ejtag_fdc_read (struct mips_ejtag_fdc_tty*,int ) ;
 int mips_ejtag_fdc_write (struct mips_ejtag_fdc_tty*,int ,unsigned int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ tty_insert_flip_char (int *,char,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void mips_ejtag_fdc_handle(struct mips_ejtag_fdc_tty *priv)
{
 struct mips_ejtag_fdc_tty_port *dport;
 unsigned int stat, channel, data, cfg, i, flipped;
 int len;
 char buf[4];

 for (;;) {

  stat = mips_ejtag_fdc_read(priv, REG_FDSTAT);
  if (stat & REG_FDSTAT_RXE)
   break;
  channel = (stat & REG_FDSTAT_RXCHAN) >> REG_FDSTAT_RXCHAN_SHIFT;
  dport = &priv->ports[channel];


  raw_spin_lock(&dport->rx_lock);
  data = mips_ejtag_fdc_read(priv, REG_FDRX);

  len = mips_ejtag_fdc_decode(data, buf);
  dev_dbg(priv->dev, "%s%u: in  %08x: \"%*pE\"\n",
   priv->driver_name, channel, data, len, buf);

  flipped = 0;
  for (i = 0; i < len; ++i) {
   if (!dport->rx_buf)
    continue;

   flipped += tty_insert_flip_char(&dport->port, buf[i],
       TTY_NORMAL);
  }
  if (flipped)
   tty_flip_buffer_push(&dport->port);

  raw_spin_unlock(&dport->rx_lock);
 }


 raw_spin_lock(&priv->lock);
 if (priv->xmit_full && !(stat & REG_FDSTAT_TXF)) {
  priv->xmit_full = 0;


  cfg = mips_ejtag_fdc_read(priv, REG_FDCFG);
  cfg &= ~REG_FDCFG_TXINTTHRES;
  cfg |= REG_FDCFG_TXINTTHRES_DISABLED;
  mips_ejtag_fdc_write(priv, REG_FDCFG, cfg);


  wake_up_interruptible(&priv->waitqueue);
 }
 raw_spin_unlock(&priv->lock);
}
