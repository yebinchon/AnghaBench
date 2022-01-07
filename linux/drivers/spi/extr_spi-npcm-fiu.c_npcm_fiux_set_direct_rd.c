
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct npcm_fiu_spi {int regmap; } ;


 int DRD_SPI_X_MODE ;
 int NPCM_FIU_DRD_16_BYTE_BURST ;
 int NPCM_FIU_DRD_ACCTYPE_SHIFT ;
 int NPCM_FIU_DRD_CFG ;
 int NPCM_FIU_DRD_CFG_ACCTYPE ;
 int NPCM_FIU_DRD_CFG_DBW ;
 int NPCM_FIU_DRD_DBW_SHIFT ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void npcm_fiux_set_direct_rd(struct npcm_fiu_spi *fiu)
{
 u32 rx_dummy = 0;

 regmap_write(fiu->regmap, NPCM_FIU_DRD_CFG,
       NPCM_FIU_DRD_16_BYTE_BURST);
 regmap_update_bits(fiu->regmap, NPCM_FIU_DRD_CFG,
      NPCM_FIU_DRD_CFG_ACCTYPE,
      DRD_SPI_X_MODE << NPCM_FIU_DRD_ACCTYPE_SHIFT);
 regmap_update_bits(fiu->regmap, NPCM_FIU_DRD_CFG,
      NPCM_FIU_DRD_CFG_DBW,
      rx_dummy << NPCM_FIU_DRD_DBW_SHIFT);
}
