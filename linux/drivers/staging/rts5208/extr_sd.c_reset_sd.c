
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sd_info {int sd_lock_status; int sd_addr; int* raw_csd; int sd_switch_fail; } ;
struct rtsx_chip {int sdio_retry_cnt; int sd_io; int sd30_drive_sel_1v8; int* card_bus_width; size_t* card2lun; struct sd_info sd_card; } ;


 int ALL_SEND_CID ;
 int APP_CMD ;
 scalar_t__ CHK_SD30_SPEED (struct sd_info*) ;
 scalar_t__ CHK_SDIO_EXIST (struct rtsx_chip*) ;
 int CHK_SDIO_IGNORED (struct rtsx_chip*) ;
 scalar_t__ CHK_SD_DDR50 (struct sd_info*) ;
 int CLR_SD_HCXC (struct sd_info*) ;
 int DDR50_SUPPORT_MASK ;
 int GO_IDLE_STATE ;
 int IO_SEND_OP_COND ;
 int REG_SD_BLOCK_CNT_H ;
 int REG_SD_BLOCK_CNT_L ;
 int SD30_DRIVE_SEL ;
 int SDR104_SUPPORT_MASK ;
 int SDR50_SUPPORT_MASK ;
 int SD_APP_OP_COND ;
 int SD_BUS_WIDTH_1 ;
 int SD_BUS_WIDTH_4 ;
 size_t SD_CARD ;
 int SD_CLK_DIVIDE_0 ;
 int SD_LOCKED ;
 int SD_LOCK_1BIT_MODE ;
 int SD_NO_CARD ;
 int SD_PWD_EXIST ;
 int SD_RSP_TYPE_R0 ;
 int SD_RSP_TYPE_R1 ;
 int SD_RSP_TYPE_R2 ;
 int SD_RSP_TYPE_R3 ;
 int SD_RSP_TYPE_R4 ;
 int SD_RSP_TYPE_R6 ;
 int SD_RSP_TYPE_R7 ;
 int SD_UNLOCK_POW_ON ;
 int SEND_IF_COND ;
 int SEND_RELATIVE_ADDR ;
 int SEND_STATUS ;
 int SET_BLOCKLEN ;
 int SET_BUS_WIDTH ;
 int SET_CLR_CARD_DETECT ;
 int SET_SD (struct sd_info*) ;
 int SET_SD_HCXC (struct sd_info*) ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int SUPPORT_VOLTAGE ;
 int detect_card_cd (struct rtsx_chip*,size_t) ;
 int dev_dbg (int ,char*,...) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int sd_check_csd (struct rtsx_chip*,int) ;
 int sd_check_spec (struct rtsx_chip*,int) ;
 int sd_check_wp_state (struct rtsx_chip*) ;
 int sd_ddr_tuning (struct rtsx_chip*) ;
 int sd_dummy_clock (struct rtsx_chip*) ;
 int sd_init_power (struct rtsx_chip*) ;
 int sd_prepare_reset (struct rtsx_chip*) ;
 int sd_read_lba0 (struct rtsx_chip*) ;
 int sd_sdr_tuning (struct rtsx_chip*) ;
 int sd_select_card (struct rtsx_chip*,int) ;
 int sd_send_cmd_get_rsp (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int sd_set_clock_divider (struct rtsx_chip*,int ) ;
 int sd_set_err_code (struct rtsx_chip*,int ) ;
 int sd_set_init_para (struct rtsx_chip*) ;
 int sd_switch_function (struct rtsx_chip*,int) ;
 int sd_update_lock_status (struct rtsx_chip*) ;
 int sd_voltage_switch (struct rtsx_chip*) ;
 int sd_wait_state_data_ready (struct rtsx_chip*,int,int,int) ;
 int wait_timeout (int) ;

__attribute__((used)) static int reset_sd(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 bool hi_cap_flow = 0;
 int retval, i = 0, j = 0, k = 0;
 bool sd_dont_switch = 0;
 bool support_1v8 = 0;
 bool try_sdio = 1;
 u8 rsp[16];
 u8 switch_bus_width;
 u32 voltage = 0;
 bool sd20_mode = 0;

 SET_SD(sd_card);

switch_fail:

 i = 0;
 j = 0;
 k = 0;
 hi_cap_flow = 0;






 retval = sd_prepare_reset(chip);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 retval = sd_dummy_clock(chip);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 if (CHK_SDIO_EXIST(chip) && !CHK_SDIO_IGNORED(chip) && try_sdio) {
  int rty_cnt = 0;

  for (; rty_cnt < chip->sdio_retry_cnt; rty_cnt++) {
   if (detect_card_cd(chip, SD_CARD) != STATUS_SUCCESS) {
    sd_set_err_code(chip, SD_NO_CARD);
    goto status_fail;
   }

   retval = sd_send_cmd_get_rsp(chip, IO_SEND_OP_COND, 0,
           SD_RSP_TYPE_R4, rsp, 5);
   if (retval == STATUS_SUCCESS) {
    int func_num = (rsp[1] >> 4) & 0x07;

    if (func_num) {
     dev_dbg(rtsx_dev(chip), "SD_IO card (Function number: %d)!\n",
      func_num);
     chip->sd_io = 1;
     goto status_fail;
    }

    break;
   }

   sd_init_power(chip);

   sd_dummy_clock(chip);
  }

  dev_dbg(rtsx_dev(chip), "Normal card!\n");
 }


RTY_SD_RST:
 retval = sd_send_cmd_get_rsp(chip, GO_IDLE_STATE, 0, SD_RSP_TYPE_R0,
         ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 wait_timeout(20);

 retval = sd_send_cmd_get_rsp(chip, SEND_IF_COND, 0x000001AA,
         SD_RSP_TYPE_R7, rsp, 5);
 if (retval == STATUS_SUCCESS) {
  if ((rsp[4] == 0xAA) && ((rsp[3] & 0x0f) == 0x01)) {
   hi_cap_flow = 1;
   voltage = SUPPORT_VOLTAGE | 0x40000000;
  }
 }

 if (!hi_cap_flow) {
  voltage = SUPPORT_VOLTAGE;

  retval = sd_send_cmd_get_rsp(chip, GO_IDLE_STATE, 0,
          SD_RSP_TYPE_R0, ((void*)0), 0);
  if (retval != STATUS_SUCCESS)
   goto status_fail;

  wait_timeout(20);
 }

 do {
  retval = sd_send_cmd_get_rsp(chip, APP_CMD, 0, SD_RSP_TYPE_R1,
          ((void*)0), 0);
  if (retval != STATUS_SUCCESS) {
   if (detect_card_cd(chip, SD_CARD) != STATUS_SUCCESS) {
    sd_set_err_code(chip, SD_NO_CARD);
    goto status_fail;
   }

   j++;
   if (j < 3)
    goto RTY_SD_RST;
   else
    goto status_fail;
  }

  retval = sd_send_cmd_get_rsp(chip, SD_APP_OP_COND, voltage,
          SD_RSP_TYPE_R3, rsp, 5);
  if (retval != STATUS_SUCCESS) {
   k++;
   if (k < 3)
    goto RTY_SD_RST;
   else
    goto status_fail;
  }

  i++;
  wait_timeout(20);
 } while (!(rsp[1] & 0x80) && (i < 255));

 if (i == 255)
  goto status_fail;

 if (hi_cap_flow) {
  if (rsp[1] & 0x40)
   SET_SD_HCXC(sd_card);
  else
   CLR_SD_HCXC(sd_card);

  support_1v8 = 0;
 } else {
  CLR_SD_HCXC(sd_card);
  support_1v8 = 0;
 }
 dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);

 if (support_1v8) {
  retval = sd_voltage_switch(chip);
  if (retval != STATUS_SUCCESS)
   goto status_fail;
 }

 retval = sd_send_cmd_get_rsp(chip, ALL_SEND_CID, 0, SD_RSP_TYPE_R2,
         ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 for (i = 0; i < 3; i++) {
  retval = sd_send_cmd_get_rsp(chip, SEND_RELATIVE_ADDR, 0,
          SD_RSP_TYPE_R6, rsp, 5);
  if (retval != STATUS_SUCCESS)
   goto status_fail;

  sd_card->sd_addr = (u32)rsp[1] << 24;
  sd_card->sd_addr += (u32)rsp[2] << 16;

  if (sd_card->sd_addr)
   break;
 }

 retval = sd_check_csd(chip, 1);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 retval = sd_select_card(chip, 1);
 if (retval != STATUS_SUCCESS)
  goto status_fail;
 retval = sd_send_cmd_get_rsp(chip, APP_CMD, sd_card->sd_addr,
         SD_RSP_TYPE_R1, ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 retval = sd_send_cmd_get_rsp(chip, SET_CLR_CARD_DETECT, 0,
         SD_RSP_TYPE_R1, ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 if (support_1v8) {
  retval = sd_send_cmd_get_rsp(chip, APP_CMD, sd_card->sd_addr,
          SD_RSP_TYPE_R1, ((void*)0), 0);
  if (retval != STATUS_SUCCESS)
   goto status_fail;

  retval = sd_send_cmd_get_rsp(chip, SET_BUS_WIDTH, 2,
          SD_RSP_TYPE_R1, ((void*)0), 0);
  if (retval != STATUS_SUCCESS)
   goto status_fail;

  switch_bus_width = SD_BUS_WIDTH_4;
 } else {
  switch_bus_width = SD_BUS_WIDTH_1;
 }

 retval = sd_send_cmd_get_rsp(chip, SET_BLOCKLEN, 0x200, SD_RSP_TYPE_R1,
         ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 retval = sd_set_clock_divider(chip, SD_CLK_DIVIDE_0);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 if (!(sd_card->raw_csd[4] & 0x40))
  sd_dont_switch = 1;

 if (!sd_dont_switch) {
  if (sd20_mode) {



   sd_card->sd_switch_fail = SDR104_SUPPORT_MASK |
    DDR50_SUPPORT_MASK | SDR50_SUPPORT_MASK;
  }


  retval = sd_check_spec(chip, switch_bus_width);
  if (retval == STATUS_SUCCESS) {
   retval = sd_switch_function(chip, switch_bus_width);
   if (retval != STATUS_SUCCESS) {
    sd_init_power(chip);
    sd_dont_switch = 1;
    try_sdio = 0;

    goto switch_fail;
   }
  } else {
   if (support_1v8) {
    sd_init_power(chip);
    sd_dont_switch = 1;
    try_sdio = 0;

    goto switch_fail;
   }
  }
 }

 if (!support_1v8) {
  retval = sd_send_cmd_get_rsp(chip, APP_CMD, sd_card->sd_addr,
          SD_RSP_TYPE_R1, ((void*)0), 0);
  if (retval != STATUS_SUCCESS)
   goto status_fail;

  retval = sd_send_cmd_get_rsp(chip, SET_BUS_WIDTH, 2,
          SD_RSP_TYPE_R1, ((void*)0), 0);
  if (retval != STATUS_SUCCESS)
   goto status_fail;
 }





 if (!sd20_mode && CHK_SD30_SPEED(sd_card)) {
  int read_lba0 = 1;

  retval = rtsx_write_register(chip, SD30_DRIVE_SEL, 0x07,
          chip->sd30_drive_sel_1v8);
  if (retval)
   return retval;

  retval = sd_set_init_para(chip);
  if (retval != STATUS_SUCCESS)
   goto status_fail;

  if (CHK_SD_DDR50(sd_card))
   retval = sd_ddr_tuning(chip);
  else
   retval = sd_sdr_tuning(chip);

  if (retval != STATUS_SUCCESS) {
   retval = sd_init_power(chip);
   if (retval != STATUS_SUCCESS)
    goto status_fail;

   try_sdio = 0;
   sd20_mode = 1;
   goto switch_fail;
  }

  sd_send_cmd_get_rsp(chip, SEND_STATUS, sd_card->sd_addr,
        SD_RSP_TYPE_R1, ((void*)0), 0);

  if (CHK_SD_DDR50(sd_card)) {
   retval = sd_wait_state_data_ready(chip, 0x08, 1, 1000);
   if (retval != STATUS_SUCCESS)
    read_lba0 = 0;
  }

  if (read_lba0) {
   retval = sd_read_lba0(chip);
   if (retval != STATUS_SUCCESS) {
    retval = sd_init_power(chip);
    if (retval != STATUS_SUCCESS)
     goto status_fail;

    try_sdio = 0;
    sd20_mode = 1;
    goto switch_fail;
   }
  }
 }

 retval = sd_check_wp_state(chip);
 if (retval != STATUS_SUCCESS)
  goto status_fail;

 chip->card_bus_width[chip->card2lun[SD_CARD]] = 4;
 return STATUS_SUCCESS;

status_fail:
 return STATUS_FAIL;
}
