
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {scalar_t__ cleanup_counter; scalar_t__ seq_mode; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 int dev_dbg (int ,char*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int sd_stop_seq_mode (struct rtsx_chip*) ;

void sd_cleanup_work(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;

 if (sd_card->seq_mode) {
  dev_dbg(rtsx_dev(chip), "SD: stop transmission\n");
  sd_stop_seq_mode(chip);
  sd_card->cleanup_counter = 0;
 }
}
