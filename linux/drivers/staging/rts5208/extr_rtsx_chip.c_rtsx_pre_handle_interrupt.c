
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_chip {int int_reg; int ocp_int; scalar_t__ sd_io; int need_reinit; int need_reset; scalar_t__ ms_show_cnt; scalar_t__ ms_reset_counter; int need_release; scalar_t__ xd_show_cnt; scalar_t__ xd_reset_counter; scalar_t__ sd_show_cnt; scalar_t__ sd_reset_counter; scalar_t__ auto_delink_cnt; scalar_t__ ss_counter; scalar_t__ ss_en; } ;


 int CARD_INT ;
 scalar_t__ CHECK_BARO_PKG (struct rtsx_chip*,int ) ;
 int CHECK_PID (struct rtsx_chip*,int) ;
 int DATA_DONE_INT ;
 int MS_EXIST ;
 int MS_INT ;
 int MS_NR ;
 int OC_INT ;
 int QFN ;
 int RTSX_BIER ;
 int RTSX_BIPR ;
 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 int SD_EXIST ;
 int SD_INT ;
 int SD_NR ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int XD_EXIST ;
 int XD_INT ;
 int XD_NR ;
 int clear_bit (int ,int *) ;
 int rtsx_exit_L1 (struct rtsx_chip*) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 void* rtsx_readl (struct rtsx_chip*,int ) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int set_bit (int ,int *) ;

int rtsx_pre_handle_interrupt(struct rtsx_chip *chip)
{
 u32 status, int_enable;
 bool exit_ss = 0;






 if (chip->ss_en) {
  chip->ss_counter = 0;
  if (rtsx_get_stat(chip) == RTSX_STAT_SS) {
   exit_ss = 1;
   rtsx_exit_L1(chip);
   rtsx_set_stat(chip, RTSX_STAT_RUN);
  }
 }

 int_enable = rtsx_readl(chip, RTSX_BIER);
 chip->int_reg = rtsx_readl(chip, RTSX_BIPR);

 if (((chip->int_reg & int_enable) == 0) ||
     (chip->int_reg == 0xFFFFFFFF))
  return STATUS_FAIL;

 status = chip->int_reg &= (int_enable | 0x7FFFFF);

 if (status & CARD_INT) {
  chip->auto_delink_cnt = 0;

  if (status & SD_INT) {
   if (status & SD_EXIST) {
    set_bit(SD_NR, &chip->need_reset);
   } else {
    set_bit(SD_NR, &chip->need_release);
    chip->sd_reset_counter = 0;
    chip->sd_show_cnt = 0;
    clear_bit(SD_NR, &chip->need_reset);
   }
  } else {







   if (exit_ss && (status & SD_EXIST))
    set_bit(SD_NR, &chip->need_reinit);
  }
  if (!CHECK_PID(chip, 0x5288) || CHECK_BARO_PKG(chip, QFN)) {
   if (status & XD_INT) {
    if (status & XD_EXIST) {
     set_bit(XD_NR, &chip->need_reset);
    } else {
     set_bit(XD_NR, &chip->need_release);
     chip->xd_reset_counter = 0;
     chip->xd_show_cnt = 0;
     clear_bit(XD_NR, &chip->need_reset);
    }
   } else {
    if (exit_ss && (status & XD_EXIST))
     set_bit(XD_NR, &chip->need_reinit);
   }
  }
  if (status & MS_INT) {
   if (status & MS_EXIST) {
    set_bit(MS_NR, &chip->need_reset);
   } else {
    set_bit(MS_NR, &chip->need_release);
    chip->ms_reset_counter = 0;
    chip->ms_show_cnt = 0;
    clear_bit(MS_NR, &chip->need_reset);
   }
  } else {
   if (exit_ss && (status & MS_EXIST))
    set_bit(MS_NR, &chip->need_reinit);
  }
 }





 if (chip->sd_io && (chip->int_reg & DATA_DONE_INT))
  chip->int_reg &= ~(u32)DATA_DONE_INT;

 return STATUS_SUCCESS;
}
