
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_info {scalar_t__ format_status; scalar_t__ pro_under_formatting; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 scalar_t__ FORMAT_IN_PROGRESS ;
 int MS_SHORT_DATA_LEN ;
 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 int mspro_read_format_progress (struct rtsx_chip*,int ) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;

void mspro_polling_format_status(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int i;

 if (ms_card->pro_under_formatting &&
     (rtsx_get_stat(chip) != RTSX_STAT_SS)) {
  rtsx_set_stat(chip, RTSX_STAT_RUN);

  for (i = 0; i < 65535; i++) {
   mspro_read_format_progress(chip, MS_SHORT_DATA_LEN);
   if (ms_card->format_status != FORMAT_IN_PROGRESS)
    break;
  }
 }
}
