
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int PPBUF_BASE2 ;
 int STATUS_ERROR ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int ) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

int rtsx_write_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
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

  for (j = 0; j < 256; j++) {
   rtsx_add_cmd(chip, WRITE_REG_CMD, reg_addr++, 0xFF,
         *ptr);
   ptr++;
  }

  retval = rtsx_send_cmd(chip, 0, 250);
  if (retval < 0)
   return STATUS_FAIL;
 }

 if (buf_len % 256) {
  rtsx_init_cmd(chip);

  for (j = 0; j < buf_len % 256; j++) {
   rtsx_add_cmd(chip, WRITE_REG_CMD, reg_addr++, 0xFF,
         *ptr);
   ptr++;
  }

  retval = rtsx_send_cmd(chip, 0, 250);
  if (retval < 0)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
