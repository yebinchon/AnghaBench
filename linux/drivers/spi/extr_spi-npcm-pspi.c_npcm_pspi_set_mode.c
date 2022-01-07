
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_device {int mode; int master; } ;
struct npcm_pspi {scalar_t__ base; } ;


 scalar_t__ NPCM_PSPI_CTL1 ;
 int NPCM_PSPI_CTL1_SCIDL ;
 int NPCM_PSPI_CTL1_SCM ;
 int SPI_CPHA ;
 int SPI_CPOL ;




 int ioread16 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;
 struct npcm_pspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void npcm_pspi_set_mode(struct spi_device *spi)
{
 struct npcm_pspi *priv = spi_master_get_devdata(spi->master);
 u16 regtemp;
 u16 mode_val;

 switch (spi->mode & (SPI_CPOL | SPI_CPHA)) {
 case 131:
  mode_val = 0;
  break;
 case 130:
  mode_val = NPCM_PSPI_CTL1_SCIDL;
  break;
 case 129:
  mode_val = NPCM_PSPI_CTL1_SCM;
  break;
 case 128:
  mode_val = NPCM_PSPI_CTL1_SCIDL | NPCM_PSPI_CTL1_SCM;
  break;
 }

 regtemp = ioread16(priv->base + NPCM_PSPI_CTL1);
 regtemp &= ~(NPCM_PSPI_CTL1_SCM | NPCM_PSPI_CTL1_SCIDL);
 iowrite16(regtemp | mode_val, priv->base + NPCM_PSPI_CTL1);
}
