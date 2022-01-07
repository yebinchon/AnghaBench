
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct npcm_pspi {scalar_t__ tx_bytes; scalar_t__ base; scalar_t__ tx_buf; int xfer_done; int rx_bytes; scalar_t__ rx_buf; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ NPCM_PSPI_DATA ;
 scalar_t__ NPCM_PSPI_STAT ;
 int NPCM_PSPI_STAT_BSY ;
 int NPCM_PSPI_STAT_RBF ;
 int complete (int *) ;
 void* ioread8 (scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 int npcm_pspi_disable (struct npcm_pspi*) ;
 int npcm_pspi_recv (struct npcm_pspi*) ;
 int npcm_pspi_send (struct npcm_pspi*) ;

__attribute__((used)) static irqreturn_t npcm_pspi_handler(int irq, void *dev_id)
{
 struct npcm_pspi *priv = dev_id;
 u16 val;
 u8 stat;

 stat = ioread8(priv->base + NPCM_PSPI_STAT);

 if (!priv->tx_buf && !priv->rx_buf)
  return IRQ_NONE;

 if (priv->tx_buf) {
  if (stat & NPCM_PSPI_STAT_RBF) {
   val = ioread8(NPCM_PSPI_DATA + priv->base);
   if (priv->tx_bytes == 0) {
    npcm_pspi_disable(priv);
    complete(&priv->xfer_done);
    return IRQ_HANDLED;
   }
  }

  if ((stat & NPCM_PSPI_STAT_BSY) == 0)
   if (priv->tx_bytes)
    npcm_pspi_send(priv);
 }

 if (priv->rx_buf) {
  if (stat & NPCM_PSPI_STAT_RBF) {
   if (!priv->rx_bytes)
    return IRQ_NONE;

   npcm_pspi_recv(priv);

   if (!priv->rx_bytes) {
    npcm_pspi_disable(priv);
    complete(&priv->xfer_done);
    return IRQ_HANDLED;
   }
  }

  if (((stat & NPCM_PSPI_STAT_BSY) == 0) && !priv->tx_buf)
   iowrite8(0x0, NPCM_PSPI_DATA + priv->base);
 }

 return IRQ_HANDLED;
}
