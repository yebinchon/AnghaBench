
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd_info {int sd_addr; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 int SD_CFG3 ;
 int SD_RSP_80CLK_TIMEOUT_EN ;
 int SD_RSP_TIMEOUT ;
 int SD_RSP_TYPE_R1 ;
 int SEND_STATUS ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int TUNE_TX ;
 int rtsx_write_register (struct rtsx_chip*,int ,int ,int ) ;
 int sd_change_phase (struct rtsx_chip*,int ,int ) ;
 scalar_t__ sd_check_err_code (struct rtsx_chip*,int ) ;
 int sd_send_cmd_get_rsp (struct rtsx_chip*,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int sd_sdr_tuning_tx_cmd(struct rtsx_chip *chip, u8 sample_point)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval;

 retval = sd_change_phase(chip, sample_point, TUNE_TX);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = rtsx_write_register(chip, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN,
         SD_RSP_80CLK_TIMEOUT_EN);
 if (retval)
  return retval;

 retval = sd_send_cmd_get_rsp(chip, SEND_STATUS, sd_card->sd_addr,
         SD_RSP_TYPE_R1, ((void*)0), 0);
 if (retval != STATUS_SUCCESS) {
  if (sd_check_err_code(chip, SD_RSP_TIMEOUT)) {
   rtsx_write_register(chip, SD_CFG3,
         SD_RSP_80CLK_TIMEOUT_EN, 0);
   return STATUS_FAIL;
  }
 }

 retval = rtsx_write_register(chip, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN,
         0);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}
