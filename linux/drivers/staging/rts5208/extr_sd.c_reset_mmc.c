
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sd_info {int sd_lock_status; int sd_addr; int* raw_csd; int mmc_dont_switch_bus; scalar_t__ capacity; } ;
struct rtsx_chip {int* card_bus_width; size_t* card2lun; size_t card_wp; struct sd_info sd_card; } ;


 int ALL_SEND_CID ;
 scalar_t__ CHK_MMC_DDR52 (struct sd_info*) ;
 scalar_t__ CHK_MMC_SECTOR_MODE (struct sd_info*) ;
 int CLR_MMC_SECTOR_MODE (struct sd_info*) ;
 int GO_IDLE_STATE ;
 int REG_SD_BLOCK_CNT_H ;
 int REG_SD_BLOCK_CNT_L ;
 int RTSX_BIPR ;
 int SD_BUSY ;
 size_t SD_CARD ;
 int SD_CLK_DIVIDE_0 ;
 int SD_NO_CARD ;
 int SD_RSP_TYPE_R0 ;
 int SD_RSP_TYPE_R1 ;
 int SD_RSP_TYPE_R2 ;
 int SD_RSP_TYPE_R3 ;
 int SD_RSP_TYPE_R6 ;
 int SD_TO_ERR ;
 int SD_UNLOCK_POW_ON ;
 int SD_WRITE_PROTECT ;
 int SEND_OP_COND ;
 int SET_BLOCKLEN ;
 int SET_MMC (struct sd_info*) ;
 int SET_MMC_SECTOR_MODE (struct sd_info*) ;
 int SET_RELATIVE_ADDR ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int SUPPORT_VOLTAGE ;
 int detect_card_cd (struct rtsx_chip*,size_t) ;
 int mmc_ddr_tuning (struct rtsx_chip*) ;
 int mmc_switch_timing_bus (struct rtsx_chip*,int) ;
 int rtsx_readl (struct rtsx_chip*,int ) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int sd_check_csd (struct rtsx_chip*,int) ;
 scalar_t__ sd_check_err_code (struct rtsx_chip*,int ) ;
 int sd_clr_err_code (struct rtsx_chip*) ;
 int sd_init_power (struct rtsx_chip*) ;
 int sd_prepare_reset (struct rtsx_chip*) ;
 int sd_read_lba0 (struct rtsx_chip*) ;
 int sd_select_card (struct rtsx_chip*,int) ;
 int sd_send_cmd_get_rsp (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int sd_set_clock_divider (struct rtsx_chip*,int ) ;
 int sd_set_err_code (struct rtsx_chip*,int ) ;
 int sd_set_init_para (struct rtsx_chip*) ;
 int sd_update_lock_status (struct rtsx_chip*) ;
 int sd_wait_state_data_ready (struct rtsx_chip*,int,int,int) ;
 int wait_timeout (int) ;

__attribute__((used)) static int reset_mmc(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval, i = 0, j = 0, k = 0;
 bool switch_ddr = 1;
 u8 rsp[16];
 u8 spec_ver = 0;
 u32 temp;






switch_fail:
 retval = sd_prepare_reset(chip);
 if (retval != STATUS_SUCCESS)
  return retval;

 SET_MMC(sd_card);

RTY_MMC_RST:
 retval = sd_send_cmd_get_rsp(chip, GO_IDLE_STATE, 0, SD_RSP_TYPE_R0,
         ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 do {
  if (detect_card_cd(chip, SD_CARD) != STATUS_SUCCESS) {
   sd_set_err_code(chip, SD_NO_CARD);
   return STATUS_FAIL;
  }

  retval = sd_send_cmd_get_rsp(chip, SEND_OP_COND,
          (SUPPORT_VOLTAGE | 0x40000000),
          SD_RSP_TYPE_R3, rsp, 5);
  if (retval != STATUS_SUCCESS) {
   if (sd_check_err_code(chip, SD_BUSY) ||
       sd_check_err_code(chip, SD_TO_ERR)) {
    k++;
    if (k < 20) {
     sd_clr_err_code(chip);
     goto RTY_MMC_RST;
    } else {
     return STATUS_FAIL;
    }
   } else {
    j++;
    if (j < 100) {
     sd_clr_err_code(chip);
     goto RTY_MMC_RST;
    } else {
     return STATUS_FAIL;
    }
   }
  }

  wait_timeout(20);
  i++;
 } while (!(rsp[1] & 0x80) && (i < 255));

 if (i == 255)
  return STATUS_FAIL;

 if ((rsp[1] & 0x60) == 0x40)
  SET_MMC_SECTOR_MODE(sd_card);
 else
  CLR_MMC_SECTOR_MODE(sd_card);

 retval = sd_send_cmd_get_rsp(chip, ALL_SEND_CID, 0, SD_RSP_TYPE_R2,
         ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 sd_card->sd_addr = 0x00100000;
 retval = sd_send_cmd_get_rsp(chip, SET_RELATIVE_ADDR, sd_card->sd_addr,
         SD_RSP_TYPE_R6, rsp, 5);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = sd_check_csd(chip, 1);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 spec_ver = (sd_card->raw_csd[0] & 0x3C) >> 2;

 retval = sd_select_card(chip, 1);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = sd_send_cmd_get_rsp(chip, SET_BLOCKLEN, 0x200, SD_RSP_TYPE_R1,
         ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;
 retval = sd_set_clock_divider(chip, SD_CLK_DIVIDE_0);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 chip->card_bus_width[chip->card2lun[SD_CARD]] = 1;

 if (!sd_card->mmc_dont_switch_bus) {
  if (spec_ver == 4) {

   retval = mmc_switch_timing_bus(chip, switch_ddr);
   if (retval != STATUS_SUCCESS) {
    retval = sd_init_power(chip);
    if (retval != STATUS_SUCCESS)
     return STATUS_FAIL;
    sd_card->mmc_dont_switch_bus = 1;
    goto switch_fail;
   }
  }

  if (CHK_MMC_SECTOR_MODE(sd_card) && (sd_card->capacity == 0))
   return STATUS_FAIL;

  if (switch_ddr && CHK_MMC_DDR52(sd_card)) {
   retval = sd_set_init_para(chip);
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;

   retval = mmc_ddr_tuning(chip);
   if (retval != STATUS_SUCCESS) {
    retval = sd_init_power(chip);
    if (retval != STATUS_SUCCESS)
     return STATUS_FAIL;

    switch_ddr = 0;
    goto switch_fail;
   }

   retval = sd_wait_state_data_ready(chip, 0x08, 1, 1000);
   if (retval == STATUS_SUCCESS) {
    retval = sd_read_lba0(chip);
    if (retval != STATUS_SUCCESS) {
     retval = sd_init_power(chip);
     if (retval != STATUS_SUCCESS)
      return STATUS_FAIL;

     switch_ddr = 0;
     goto switch_fail;
    }
   }
  }
 }
 temp = rtsx_readl(chip, RTSX_BIPR);
 if (temp & SD_WRITE_PROTECT)
  chip->card_wp |= SD_CARD;

 return STATUS_SUCCESS;
}
