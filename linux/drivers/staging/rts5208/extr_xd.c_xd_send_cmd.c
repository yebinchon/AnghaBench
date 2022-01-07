
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int CHECK_REG_CMD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int XD_CARD ;
 int XD_DAT ;
 int XD_SET_CMD ;
 int XD_TRANSFER ;
 int XD_TRANSFER_END ;
 int XD_TRANSFER_START ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

__attribute__((used)) static int xd_send_cmd(struct rtsx_chip *chip, u8 cmd)
{
 int retval;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, WRITE_REG_CMD, XD_DAT, 0xFF, cmd);
 rtsx_add_cmd(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
       XD_TRANSFER_START | XD_SET_CMD);
 rtsx_add_cmd(chip, CHECK_REG_CMD, XD_TRANSFER,
       XD_TRANSFER_END, XD_TRANSFER_END);

 retval = rtsx_send_cmd(chip, XD_CARD, 200);
 if (retval < 0)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
