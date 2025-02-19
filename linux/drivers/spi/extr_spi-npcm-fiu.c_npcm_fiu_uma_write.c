
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int nbytes; int val; int buswidth; } ;
struct TYPE_7__ {int buswidth; } ;
struct TYPE_6__ {int buswidth; } ;
struct spi_mem_op {TYPE_4__ addr; TYPE_3__ data; TYPE_2__ cmd; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct npcm_fiu_spi {int regmap; } ;
struct TYPE_5__ {int chip_select; int master; } ;


 int BIT (int) ;
 int DIV_ROUND_UP (int,int) ;
 scalar_t__ NPCM_FIU_UMA_ADDR ;
 scalar_t__ NPCM_FIU_UMA_CFG ;
 int NPCM_FIU_UMA_CFG_ADBPCK_SHIFT ;
 int NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT ;
 int NPCM_FIU_UMA_CFG_WDATSIZ_SHIFT ;
 int NPCM_FIU_UMA_CFG_WDBPCK_SHIFT ;
 int NPCM_FIU_UMA_CMD ;
 int NPCM_FIU_UMA_CMD_CMD ;
 int NPCM_FIU_UMA_CTS ;
 int NPCM_FIU_UMA_CTS_DEV_NUM ;
 int NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT ;
 int NPCM_FIU_UMA_CTS_EXEC_DONE ;
 scalar_t__ NPCM_FIU_UMA_DW0 ;
 int UMA_MICRO_SEC_TIMEOUT ;
 int ilog2 (int ) ;
 int memcpy (int*,int*,int) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,scalar_t__,int) ;
 int regmap_write_bits (int ,int ,int,int) ;
 struct npcm_fiu_spi* spi_controller_get_devdata (int ) ;

__attribute__((used)) static int npcm_fiu_uma_write(struct spi_mem *mem,
         const struct spi_mem_op *op, u8 cmd,
         bool is_address_size, u8 *data, u32 data_size)
{
 struct npcm_fiu_spi *fiu =
  spi_controller_get_devdata(mem->spi->master);
 u32 uma_cfg = BIT(10);
 u32 data_reg[4] = {0};
 u32 val;
 u32 i;

 regmap_update_bits(fiu->regmap, NPCM_FIU_UMA_CTS,
      NPCM_FIU_UMA_CTS_DEV_NUM,
      (mem->spi->chip_select <<
       NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT));

 regmap_update_bits(fiu->regmap, NPCM_FIU_UMA_CMD,
      NPCM_FIU_UMA_CMD_CMD, cmd);

 if (data_size) {
  memcpy(data_reg, data, data_size);
  for (i = 0; i < DIV_ROUND_UP(data_size, 4); i++)
   regmap_write(fiu->regmap, NPCM_FIU_UMA_DW0 + (i * 4),
         data_reg[i]);
 }

 if (is_address_size) {
  uma_cfg |= ilog2(op->cmd.buswidth);
  uma_cfg |= ilog2(op->addr.buswidth) <<
   NPCM_FIU_UMA_CFG_ADBPCK_SHIFT;
  uma_cfg |= ilog2(op->data.buswidth) <<
   NPCM_FIU_UMA_CFG_WDBPCK_SHIFT;
  uma_cfg |= op->addr.nbytes << NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT;
  regmap_write(fiu->regmap, NPCM_FIU_UMA_ADDR, op->addr.val);
 } else {
  regmap_write(fiu->regmap, NPCM_FIU_UMA_ADDR, 0x0);
 }

 uma_cfg |= (data_size << NPCM_FIU_UMA_CFG_WDATSIZ_SHIFT);
 regmap_write(fiu->regmap, NPCM_FIU_UMA_CFG, uma_cfg);

 regmap_write_bits(fiu->regmap, NPCM_FIU_UMA_CTS,
     NPCM_FIU_UMA_CTS_EXEC_DONE,
     NPCM_FIU_UMA_CTS_EXEC_DONE);

 return regmap_read_poll_timeout(fiu->regmap, NPCM_FIU_UMA_CTS, val,
           (!(val & NPCM_FIU_UMA_CTS_EXEC_DONE)), 0,
     UMA_MICRO_SEC_TIMEOUT);
}
