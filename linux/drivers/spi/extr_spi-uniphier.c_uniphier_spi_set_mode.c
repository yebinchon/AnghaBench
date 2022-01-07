
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_spi_priv {scalar_t__ base; } ;
struct spi_device {int mode; int master; } ;


 int FIELD_PREP (int ,int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;




 scalar_t__ SSI_CKS ;
 int SSI_CKS_CKDLY ;
 int SSI_CKS_CKINIT ;
 int SSI_CKS_CKPHS ;
 scalar_t__ SSI_FPS ;
 int SSI_FPS_FSPOL ;
 int SSI_FPS_FSTRT ;
 scalar_t__ SSI_RXWDS ;
 scalar_t__ SSI_TXWDS ;
 int SSI_TXWDS_TDTF_MASK ;
 struct uniphier_spi_priv* spi_master_get_devdata (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_spi_set_mode(struct spi_device *spi)
{
 struct uniphier_spi_priv *priv = spi_master_get_devdata(spi->master);
 u32 val1, val2;
 switch (spi->mode & (SPI_CPOL | SPI_CPHA)) {
 case 131:

  val1 = SSI_CKS_CKPHS | SSI_CKS_CKDLY;
  val2 = 0;
  break;
 case 130:

  val1 = 0;
  val2 = SSI_FPS_FSTRT;
  break;
 case 129:

  val1 = SSI_CKS_CKINIT | SSI_CKS_CKDLY;
  val2 = SSI_FPS_FSTRT;
  break;
 case 128:

  val1 = SSI_CKS_CKPHS | SSI_CKS_CKINIT;
  val2 = 0;
  break;
 }

 if (!(spi->mode & SPI_CS_HIGH))
  val2 |= SSI_FPS_FSPOL;

 writel(val1, priv->base + SSI_CKS);
 writel(val2, priv->base + SSI_FPS);

 val1 = 0;
 if (spi->mode & SPI_LSB_FIRST)
  val1 |= FIELD_PREP(SSI_TXWDS_TDTF_MASK, 1);
 writel(val1, priv->base + SSI_TXWDS);
 writel(val1, priv->base + SSI_RXWDS);
}
