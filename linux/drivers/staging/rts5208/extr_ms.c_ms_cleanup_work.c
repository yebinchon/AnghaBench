
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ delay_write_flag; } ;
struct ms_info {scalar_t__ cleanup_counter; TYPE_1__ delay_write; scalar_t__ seq_mode; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 scalar_t__ CHK_MSHG (struct ms_info*) ;
 scalar_t__ CHK_MSPRO (struct ms_info*) ;
 int MS_2K_SECTOR_MODE ;
 int MS_CFG ;
 int dev_dbg (int ,char*) ;
 int ms_delay_write (struct rtsx_chip*) ;
 int mspro_stop_seq_mode (struct rtsx_chip*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int ,int) ;

void ms_cleanup_work(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;

 if (CHK_MSPRO(ms_card)) {
  if (ms_card->seq_mode) {
   dev_dbg(rtsx_dev(chip), "MS Pro: stop transmission\n");
   mspro_stop_seq_mode(chip);
   ms_card->cleanup_counter = 0;
  }
  if (CHK_MSHG(ms_card)) {
   rtsx_write_register(chip, MS_CFG,
         MS_2K_SECTOR_MODE, 0x00);
  }
 }
}
