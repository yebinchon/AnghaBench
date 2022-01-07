
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd_info {int sd_addr; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 int SD_RSP_TYPE_R1 ;
 int SEND_STATUS ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int sd_send_cmd_get_rsp (struct rtsx_chip*,int ,int ,int ,int*,int) ;

__attribute__((used)) static int sd_wait_state_data_ready(struct rtsx_chip *chip, u8 state,
        u8 data_ready, int polling_cnt)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval, i;
 u8 rsp[5];

 for (i = 0; i < polling_cnt; i++) {
  retval = sd_send_cmd_get_rsp(chip, SEND_STATUS,
          sd_card->sd_addr, SD_RSP_TYPE_R1,
          rsp, 5);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  if (((rsp[3] & 0x1E) == state) &&
      ((rsp[3] & 0x01) == data_ready))
   return STATUS_SUCCESS;
 }

 return STATUS_FAIL;
}
