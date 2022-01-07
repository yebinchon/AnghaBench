
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
struct TYPE_8__ {int opcode; } ;
struct TYPE_5__ {scalar_t__ out; } ;
struct TYPE_6__ {int nbytes; TYPE_1__ buf; } ;
struct spi_mem_op {TYPE_4__ cmd; TYPE_2__ data; } ;
struct spi_mem {TYPE_3__* spi; } ;
struct npcm_fiu_spi {int regmap; } ;
struct TYPE_7__ {int chip_select; int master; } ;


 int CHUNK_SIZE ;
 int NPCM_FIU_UMA_CTS ;
 int NPCM_FIU_UMA_CTS_DEV_NUM ;
 int NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT ;
 int NPCM_FIU_UMA_CTS_SW_CS ;
 int npcm_fiu_uma_write (struct spi_mem*,struct spi_mem_op const*,int ,int,int *,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct npcm_fiu_spi* spi_controller_get_devdata (int ) ;

__attribute__((used)) static int npcm_fiu_manualwrite(struct spi_mem *mem,
    const struct spi_mem_op *op)
{
 struct npcm_fiu_spi *fiu =
  spi_controller_get_devdata(mem->spi->master);
 u8 *data = (u8 *)op->data.buf.out;
 u32 num_data_chunks;
 u32 remain_data;
 u32 idx = 0;
 int ret;

 num_data_chunks = op->data.nbytes / CHUNK_SIZE;
 remain_data = op->data.nbytes % CHUNK_SIZE;

 regmap_update_bits(fiu->regmap, NPCM_FIU_UMA_CTS,
      NPCM_FIU_UMA_CTS_DEV_NUM,
      (mem->spi->chip_select <<
       NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT));
 regmap_update_bits(fiu->regmap, NPCM_FIU_UMA_CTS,
      NPCM_FIU_UMA_CTS_SW_CS, 0);

 ret = npcm_fiu_uma_write(mem, op, op->cmd.opcode, 1, ((void*)0), 0);
 if (ret)
  return ret;


 for (idx = 0; idx < num_data_chunks; ++idx) {
  ret = npcm_fiu_uma_write(mem, op, data[0], 0,
      &data[1], CHUNK_SIZE - 1);
  if (ret)
   return ret;

  data += CHUNK_SIZE;
 }


 if (remain_data > 0) {
  ret = npcm_fiu_uma_write(mem, op, data[0], 0,
      &data[1], remain_data - 1);
  if (ret)
   return ret;
 }

 regmap_update_bits(fiu->regmap, NPCM_FIU_UMA_CTS,
      NPCM_FIU_UMA_CTS_SW_CS, NPCM_FIU_UMA_CTS_SW_CS);

 return 0;
}
