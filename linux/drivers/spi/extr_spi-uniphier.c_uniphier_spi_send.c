
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_spi_priv {int tx_bytes; scalar_t__ base; int * tx_buf; int bits_per_word; } ;


 scalar_t__ SSI_TXDR ;
 int bytes_per_word (int ) ;
 int get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int min (int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_spi_send(struct uniphier_spi_priv *priv)
{
 int wsize;
 u32 val = 0;

 wsize = min(bytes_per_word(priv->bits_per_word), priv->tx_bytes);
 priv->tx_bytes -= wsize;

 if (priv->tx_buf) {
  switch (wsize) {
  case 1:
   val = *priv->tx_buf;
   break;
  case 2:
   val = get_unaligned_le16(priv->tx_buf);
   break;
  case 4:
   val = get_unaligned_le32(priv->tx_buf);
   break;
  }

  priv->tx_buf += wsize;
 }

 writel(val, priv->base + SSI_TXDR);
}
