
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct npcm_pspi {int rx_bytes; int * rx_buf; scalar_t__ base; int bits_per_word; } ;


 scalar_t__ NPCM_PSPI_DATA ;
 int WARN_ON_ONCE (int) ;
 int bytes_per_word (int ) ;
 int ioread16 (scalar_t__) ;
 int ioread8 (scalar_t__) ;
 int min (int ,int) ;

__attribute__((used)) static void npcm_pspi_recv(struct npcm_pspi *priv)
{
 int rsize;
 u16 val;

 rsize = min(bytes_per_word(priv->bits_per_word), priv->rx_bytes);
 priv->rx_bytes -= rsize;

 if (!priv->rx_buf)
  return;

 switch (rsize) {
 case 1:
  val = ioread8(priv->base + NPCM_PSPI_DATA);
  break;
 case 2:
  val = ioread16(priv->base + NPCM_PSPI_DATA);
  break;
 default:
  WARN_ON_ONCE(1);
  return;
 }

 *priv->rx_buf = val;
 priv->rx_buf += rsize;
}
