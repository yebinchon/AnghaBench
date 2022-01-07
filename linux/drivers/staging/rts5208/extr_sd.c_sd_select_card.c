
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sd_info {scalar_t__ sd_addr; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 int DESELECT_CARD ;
 int SD_RSP_TYPE_R0 ;
 int SD_RSP_TYPE_R1 ;
 int SELECT_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int sd_send_cmd_get_rsp (struct rtsx_chip*,int ,scalar_t__,int ,int *,int ) ;

int sd_select_card(struct rtsx_chip *chip, int select)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval;
 u8 cmd_idx, cmd_type;
 u32 addr;

 if (select) {
  cmd_idx = SELECT_CARD;
  cmd_type = SD_RSP_TYPE_R1;
  addr = sd_card->sd_addr;
 } else {
  cmd_idx = DESELECT_CARD;
  cmd_type = SD_RSP_TYPE_R0;
  addr = 0;
 }

 retval = sd_send_cmd_get_rsp(chip, cmd_idx, addr, cmd_type, ((void*)0), 0);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
