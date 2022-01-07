
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct npcm_pspi {scalar_t__ base; } ;


 scalar_t__ NPCM_PSPI_CTL1 ;
 int NPCM_PSPI_CTL1_MOD ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static void npcm_pspi_set_transfer_size(struct npcm_pspi *priv, int size)
{
 u16 regtemp;

 regtemp = ioread16(NPCM_PSPI_CTL1 + priv->base);

 switch (size) {
 case 8:
  regtemp &= ~NPCM_PSPI_CTL1_MOD;
  break;
 case 16:
  regtemp |= NPCM_PSPI_CTL1_MOD;
  break;
 }

 iowrite16(regtemp, NPCM_PSPI_CTL1 + priv->base);
}
