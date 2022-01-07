
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtsx_chip {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int CARD_DATA_SOURCE ;
 int DMACTL ;
 int DMATC0 ;
 int DMATC1 ;
 int DMATC2 ;
 int DMATC3 ;
 int DMA_1024 ;
 int DMA_512 ;
 int DMA_DIR_FROM_CARD ;
 int DMA_DIR_TO_CARD ;
 int DMA_DONE_INT ;
 int DMA_EN ;
 int DMA_FROM_DEVICE ;
 int DMA_PACK_SIZE_MASK ;
 int IRQSTAT0 ;
 int RING_BUFFER ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;

void trans_dma_enable(enum dma_data_direction dir, struct rtsx_chip *chip,
        u32 byte_cnt, u8 pack_size)
{
 if (pack_size > DMA_1024)
  pack_size = DMA_512;

 rtsx_add_cmd(chip, WRITE_REG_CMD, IRQSTAT0, DMA_DONE_INT, DMA_DONE_INT);

 rtsx_add_cmd(chip, WRITE_REG_CMD, DMATC3, 0xFF, (u8)(byte_cnt >> 24));
 rtsx_add_cmd(chip, WRITE_REG_CMD, DMATC2, 0xFF, (u8)(byte_cnt >> 16));
 rtsx_add_cmd(chip, WRITE_REG_CMD, DMATC1, 0xFF, (u8)(byte_cnt >> 8));
 rtsx_add_cmd(chip, WRITE_REG_CMD, DMATC0, 0xFF, (u8)byte_cnt);

 if (dir == DMA_FROM_DEVICE) {
  rtsx_add_cmd(chip, WRITE_REG_CMD, DMACTL,
        0x03 | DMA_PACK_SIZE_MASK,
        DMA_DIR_FROM_CARD | DMA_EN | pack_size);
 } else {
  rtsx_add_cmd(chip, WRITE_REG_CMD, DMACTL,
        0x03 | DMA_PACK_SIZE_MASK,
        DMA_DIR_TO_CARD | DMA_EN | pack_size);
 }

 rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01, RING_BUFFER);
}
