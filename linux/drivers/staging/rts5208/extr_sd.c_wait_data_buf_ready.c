
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {int sd_addr; scalar_t__ sd_data_buf_ready; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 int SD_CARD ;
 int SD_NO_CARD ;
 int SD_RSP_TYPE_R1 ;
 int SD_TO_ERR ;
 int SEND_STATUS ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WAIT_DATA_READY_RTY_CNT ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int sd_send_cmd_get_rsp (struct rtsx_chip*,int ,int ,int ,int *,int ) ;
 int sd_set_err_code (struct rtsx_chip*,int ) ;

__attribute__((used)) static int wait_data_buf_ready(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 int i, retval;

 for (i = 0; i < WAIT_DATA_READY_RTY_CNT; i++) {
  if (detect_card_cd(chip, SD_CARD) != STATUS_SUCCESS) {
   sd_set_err_code(chip, SD_NO_CARD);
   return STATUS_FAIL;
  }

  sd_card->sd_data_buf_ready = 0;

  retval = sd_send_cmd_get_rsp(chip, SEND_STATUS,
          sd_card->sd_addr, SD_RSP_TYPE_R1,
          ((void*)0), 0);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  if (sd_card->sd_data_buf_ready) {
   return sd_send_cmd_get_rsp(chip, SEND_STATUS,
    sd_card->sd_addr, SD_RSP_TYPE_R1, ((void*)0), 0);
  }
 }

 sd_set_err_code(chip, SD_TO_ERR);

 return STATUS_FAIL;
}
