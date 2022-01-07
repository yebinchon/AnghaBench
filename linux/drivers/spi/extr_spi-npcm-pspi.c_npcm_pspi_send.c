
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npcm_pspi {int tx_bytes; int * tx_buf; scalar_t__ base; int bits_per_word; } ;


 scalar_t__ NPCM_PSPI_DATA ;
 int WARN_ON_ONCE (int) ;
 int bytes_per_word (int ) ;
 int iowrite16 (int ,scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;
 int min (int ,int) ;

__attribute__((used)) static void npcm_pspi_send(struct npcm_pspi *priv)
{
 int wsize;

 wsize = min(bytes_per_word(priv->bits_per_word), priv->tx_bytes);
 priv->tx_bytes -= wsize;

 if (!priv->tx_buf)
  return;

 switch (wsize) {
 case 1:
  iowrite8(*priv->tx_buf, NPCM_PSPI_DATA + priv->base);
  break;
 case 2:
  iowrite16(*priv->tx_buf, NPCM_PSPI_DATA + priv->base);
  break;
 default:
  WARN_ON_ONCE(1);
  return;
 }

 priv->tx_buf += wsize;
}
