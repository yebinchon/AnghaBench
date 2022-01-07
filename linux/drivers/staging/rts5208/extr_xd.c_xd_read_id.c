
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int CHECK_REG_CMD ;
 int READ_REG_CMD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 scalar_t__ XD_ADDRESS1 ;
 int XD_CARD ;
 int XD_DAT ;
 int XD_READ_ID ;
 int XD_TRANSFER ;
 int XD_TRANSFER_END ;
 int XD_TRANSFER_START ;
 int memcpy (int*,int*,int) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int* rtsx_get_cmd_data (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

__attribute__((used)) static int xd_read_id(struct rtsx_chip *chip, u8 id_cmd, u8 *id_buf, u8 buf_len)
{
 int retval, i;
 u8 *ptr;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, WRITE_REG_CMD, XD_DAT, 0xFF, id_cmd);
 rtsx_add_cmd(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
       XD_TRANSFER_START | XD_READ_ID);
 rtsx_add_cmd(chip, CHECK_REG_CMD, XD_TRANSFER, XD_TRANSFER_END,
       XD_TRANSFER_END);

 for (i = 0; i < 4; i++)
  rtsx_add_cmd(chip, READ_REG_CMD, (u16)(XD_ADDRESS1 + i), 0, 0);

 retval = rtsx_send_cmd(chip, XD_CARD, 20);
 if (retval < 0)
  return STATUS_FAIL;

 ptr = rtsx_get_cmd_data(chip) + 1;
 if (id_buf && buf_len) {
  if (buf_len > 4)
   buf_len = 4;
  memcpy(id_buf, ptr, buf_len);
 }

 return STATUS_SUCCESS;
}
