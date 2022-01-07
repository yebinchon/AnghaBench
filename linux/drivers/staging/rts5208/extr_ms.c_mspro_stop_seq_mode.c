
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_info {scalar_t__ total_sec_cnt; scalar_t__ seq_mode; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int PRO_STOP ;
 int RBCTL ;
 int RB_FLUSH ;
 int STATUS_SUCCESS ;
 int WAIT_INT ;
 int ms_send_cmd (struct rtsx_chip*,int ,int ) ;
 int ms_switch_clock (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int ,int ) ;

void mspro_stop_seq_mode(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;

 if (ms_card->seq_mode) {
  retval = ms_switch_clock(chip);
  if (retval != STATUS_SUCCESS)
   return;

  ms_card->seq_mode = 0;
  ms_card->total_sec_cnt = 0;
  ms_send_cmd(chip, PRO_STOP, WAIT_INT);

  rtsx_write_register(chip, RBCTL, RB_FLUSH, RB_FLUSH);
 }
}
