
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int CHECK_REG_CMD ;
 int READY_FLAG ;
 int READY_STATE ;
 int READ_REG_CMD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int XD_CARD ;
 int XD_CTL ;
 int XD_DAT ;
 int XD_RDY ;
 int XD_RESET ;
 int XD_TRANSFER ;
 int XD_TRANSFER_END ;
 int XD_TRANSFER_START ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int* rtsx_get_cmd_data (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

__attribute__((used)) static int xd_reset_cmd(struct rtsx_chip *chip)
{
 int retval;
 u8 *ptr;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, WRITE_REG_CMD, XD_TRANSFER,
       0xFF, XD_TRANSFER_START | XD_RESET);
 rtsx_add_cmd(chip, CHECK_REG_CMD, XD_TRANSFER,
       XD_TRANSFER_END, XD_TRANSFER_END);
 rtsx_add_cmd(chip, READ_REG_CMD, XD_DAT, 0, 0);
 rtsx_add_cmd(chip, READ_REG_CMD, XD_CTL, 0, 0);

 retval = rtsx_send_cmd(chip, XD_CARD, 100);
 if (retval < 0)
  return STATUS_FAIL;

 ptr = rtsx_get_cmd_data(chip) + 1;
 if (((ptr[0] & READY_FLAG) == READY_STATE) && (ptr[1] & XD_RDY))
  return STATUS_SUCCESS;

 return STATUS_FAIL;
}
