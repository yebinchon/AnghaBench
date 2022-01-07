
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npcm_pspi {int id; int rst_regmap; } ;


 int NPCM7XX_IPSRST2_OFFSET ;
 int NPCM7XX_PSPI1_RESET ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void npcm_pspi_reset_hw(struct npcm_pspi *priv)
{
 regmap_write(priv->rst_regmap, NPCM7XX_IPSRST2_OFFSET,
       NPCM7XX_PSPI1_RESET << priv->id);
 regmap_write(priv->rst_regmap, NPCM7XX_IPSRST2_OFFSET, 0x0);
}
