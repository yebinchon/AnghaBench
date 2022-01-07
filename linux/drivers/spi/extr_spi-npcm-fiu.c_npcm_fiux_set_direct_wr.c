
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npcm_fiu_spi {int regmap; } ;


 int DWR_ABPCK_4_BIT_PER_CLK ;
 int DWR_DBPCK_4_BIT_PER_CLK ;
 int NPCM_FIU_DWR_16_BYTE_BURST ;
 int NPCM_FIU_DWR_ABPCK_SHIFT ;
 int NPCM_FIU_DWR_CFG ;
 int NPCM_FIU_DWR_CFG_ABPCK ;
 int NPCM_FIU_DWR_CFG_DBPCK ;
 int NPCM_FIU_DWR_DBPCK_SHIFT ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void npcm_fiux_set_direct_wr(struct npcm_fiu_spi *fiu)
{
 regmap_write(fiu->regmap, NPCM_FIU_DWR_CFG,
       NPCM_FIU_DWR_16_BYTE_BURST);
 regmap_update_bits(fiu->regmap, NPCM_FIU_DWR_CFG,
      NPCM_FIU_DWR_CFG_ABPCK,
      DWR_ABPCK_4_BIT_PER_CLK << NPCM_FIU_DWR_ABPCK_SHIFT);
 regmap_update_bits(fiu->regmap, NPCM_FIU_DWR_CFG,
      NPCM_FIU_DWR_CFG_DBPCK,
      DWR_DBPCK_4_BIT_PER_CLK << NPCM_FIU_DWR_DBPCK_SHIFT);
}
