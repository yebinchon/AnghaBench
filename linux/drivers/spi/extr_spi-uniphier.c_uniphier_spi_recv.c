
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_spi_priv {int rx_bytes; int * rx_buf; scalar_t__ base; int bits_per_word; } ;


 scalar_t__ SSI_RXDR ;
 int bytes_per_word (int ) ;
 int min (int ,int) ;
 int put_unaligned_le16 (int ,int *) ;
 int put_unaligned_le32 (int ,int *) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void uniphier_spi_recv(struct uniphier_spi_priv *priv)
{
 int rsize;
 u32 val;

 rsize = min(bytes_per_word(priv->bits_per_word), priv->rx_bytes);
 priv->rx_bytes -= rsize;

 val = readl(priv->base + SSI_RXDR);

 if (priv->rx_buf) {
  switch (rsize) {
  case 1:
   *priv->rx_buf = val;
   break;
  case 2:
   put_unaligned_le16(val, priv->rx_buf);
   break;
  case 4:
   put_unaligned_le32(val, priv->rx_buf);
   break;
  }

  priv->rx_buf += rsize;
 }
}
