
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_spi_priv {unsigned int rx_bytes; unsigned int tx_bytes; scalar_t__ base; int bits_per_word; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int FIELD_PREP (int,unsigned int) ;
 scalar_t__ SSI_FC ;
 int SSI_FC_RXFTH_MASK ;
 int SSI_FC_TXFTH_MASK ;
 int SSI_FIFO_DEPTH ;
 int bytes_per_word (int ) ;
 unsigned int min (unsigned int,int ) ;
 int readl (scalar_t__) ;
 int uniphier_spi_send (struct uniphier_spi_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_spi_fill_tx_fifo(struct uniphier_spi_priv *priv)
{
 unsigned int fifo_threshold, fill_bytes;
 u32 val;

 fifo_threshold = DIV_ROUND_UP(priv->rx_bytes,
    bytes_per_word(priv->bits_per_word));
 fifo_threshold = min(fifo_threshold, SSI_FIFO_DEPTH);

 fill_bytes = fifo_threshold - (priv->rx_bytes - priv->tx_bytes);


 val = readl(priv->base + SSI_FC);
 val &= ~(SSI_FC_TXFTH_MASK | SSI_FC_RXFTH_MASK);
 val |= FIELD_PREP(SSI_FC_TXFTH_MASK, fifo_threshold);
 val |= FIELD_PREP(SSI_FC_RXFTH_MASK, fifo_threshold);
 writel(val, priv->base + SSI_FC);

 while (fill_bytes--)
  uniphier_spi_send(priv);
}
