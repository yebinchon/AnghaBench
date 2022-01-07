
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int nbytes; int buswidth; } ;
struct TYPE_11__ {int opcode; } ;
struct TYPE_9__ {int nbytes; } ;
struct spi_mem_op {TYPE_7__ addr; TYPE_4__ cmd; TYPE_2__ dummy; } ;
struct TYPE_12__ {int nbytes; int buswidth; } ;
struct TYPE_10__ {int opcode; } ;
struct TYPE_8__ {int nbytes; } ;
struct TYPE_13__ {TYPE_5__ addr; TYPE_3__ cmd; TYPE_1__ dummy; } ;
struct npcm_fiu_spi {TYPE_6__ drd_op; int regmap; } ;


 int NPCM_FIU_DRD_ACCTYPE_SHIFT ;
 int NPCM_FIU_DRD_ADDSIZ_SHIFT ;
 int NPCM_FIU_DRD_CFG ;
 int NPCM_FIU_DRD_CFG_ACCTYPE ;
 int NPCM_FIU_DRD_CFG_ADDSIZ ;
 int NPCM_FIU_DRD_CFG_DBW ;
 int NPCM_FIU_DRD_CFG_RDCMD ;
 int NPCM_FIU_DRD_DBW_SHIFT ;
 int NUM_BITS_IN_BYTE ;
 int ilog2 (int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static void npcm_fiu_set_drd(struct npcm_fiu_spi *fiu,
        const struct spi_mem_op *op)
{
 regmap_update_bits(fiu->regmap, NPCM_FIU_DRD_CFG,
      NPCM_FIU_DRD_CFG_ACCTYPE,
      ilog2(op->addr.buswidth) <<
      NPCM_FIU_DRD_ACCTYPE_SHIFT);
 fiu->drd_op.addr.buswidth = op->addr.buswidth;
 regmap_update_bits(fiu->regmap, NPCM_FIU_DRD_CFG,
      NPCM_FIU_DRD_CFG_DBW,
      ((op->dummy.nbytes * ilog2(op->addr.buswidth))
       / NUM_BITS_IN_BYTE) << NPCM_FIU_DRD_DBW_SHIFT);
 fiu->drd_op.dummy.nbytes = op->dummy.nbytes;
 regmap_update_bits(fiu->regmap, NPCM_FIU_DRD_CFG,
      NPCM_FIU_DRD_CFG_RDCMD, op->cmd.opcode);
 fiu->drd_op.cmd.opcode = op->cmd.opcode;
 regmap_update_bits(fiu->regmap, NPCM_FIU_DRD_CFG,
      NPCM_FIU_DRD_CFG_ADDSIZ,
      (op->addr.nbytes - 3) << NPCM_FIU_DRD_ADDSIZ_SHIFT);
 fiu->drd_op.addr.nbytes = op->addr.nbytes;
}
