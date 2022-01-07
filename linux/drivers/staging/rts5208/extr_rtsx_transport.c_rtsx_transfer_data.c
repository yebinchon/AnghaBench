
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int need_reinit; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int EIO ;
 int MS_CARD ;
 int RTSX_CLR_DELINK (struct rtsx_chip*) ;
 int RTSX_STAT_ABORT ;
 scalar_t__ RTSX_TST_DELINK (struct rtsx_chip*) ;
 int SD_CARD ;
 int XD_CARD ;
 int dev_dbg (int ,char*,int) ;
 scalar_t__ rtsx_chk_stat (struct rtsx_chip*,int ) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_reinit_cards (struct rtsx_chip*,int) ;
 int rtsx_transfer_buf (struct rtsx_chip*,int ,void*,size_t,int,int) ;
 int rtsx_transfer_sglist_adma (struct rtsx_chip*,int ,void*,int,int,int) ;

int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
         int use_sg, enum dma_data_direction dma_dir, int timeout)
{
 int err = 0;

 dev_dbg(rtsx_dev(chip), "use_sg = %d\n", use_sg);


 if (rtsx_chk_stat(chip, RTSX_STAT_ABORT))
  return -EIO;

 if (use_sg) {
  err = rtsx_transfer_sglist_adma(chip, card, buf,
      use_sg, dma_dir, timeout);
 } else {
  err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
 }

 if (err < 0) {
  if (RTSX_TST_DELINK(chip)) {
   RTSX_CLR_DELINK(chip);
   chip->need_reinit = SD_CARD | MS_CARD | XD_CARD;
   rtsx_reinit_cards(chip, 1);
  }
 }

 return err;
}
