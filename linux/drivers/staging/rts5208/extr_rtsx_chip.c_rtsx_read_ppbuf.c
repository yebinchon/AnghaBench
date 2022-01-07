
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int PPBUF_BASE2 ;
 int READ_REG_CMD ;
 int STATUS_ERROR ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int memcpy (int *,int ,int) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int ,int ) ;
 int rtsx_get_cmd_data (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
{
 int retval;
 int i, j;
 u16 reg_addr;
 u8 *ptr;

 if (!buf)
  return STATUS_ERROR;

 ptr = buf;
 reg_addr = PPBUF_BASE2;
 for (i = 0; i < buf_len / 256; i++) {
  rtsx_init_cmd(chip);

  for (j = 0; j < 256; j++)
   rtsx_add_cmd(chip, READ_REG_CMD, reg_addr++, 0, 0);

  retval = rtsx_send_cmd(chip, 0, 250);
  if (retval < 0)
   return STATUS_FAIL;

  memcpy(ptr, rtsx_get_cmd_data(chip), 256);
  ptr += 256;
 }

 if (buf_len % 256) {
  rtsx_init_cmd(chip);

  for (j = 0; j < buf_len % 256; j++)
   rtsx_add_cmd(chip, READ_REG_CMD, reg_addr++, 0, 0);

  retval = rtsx_send_cmd(chip, 0, 250);
  if (retval < 0)
   return STATUS_FAIL;
 }

 memcpy(ptr, rtsx_get_cmd_data(chip), buf_len % 256);

 return STATUS_SUCCESS;
}
