
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 scalar_t__ PPBUF_BASE2 ;
 int READ_REG_CMD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int memcpy (int *,int ,int) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,scalar_t__,int ,int ) ;
 int rtsx_clear_xd_error (struct rtsx_chip*) ;
 int rtsx_get_cmd_data (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

__attribute__((used)) static int xd_read_data_from_ppb(struct rtsx_chip *chip, int offset,
     u8 *buf, int buf_len)
{
 int retval, i;

 if (!buf || (buf_len < 0))
  return STATUS_FAIL;

 rtsx_init_cmd(chip);

 for (i = 0; i < buf_len; i++)
  rtsx_add_cmd(chip, READ_REG_CMD, PPBUF_BASE2 + offset + i,
        0, 0);

 retval = rtsx_send_cmd(chip, 0, 250);
 if (retval < 0) {
  rtsx_clear_xd_error(chip);
  return STATUS_FAIL;
 }

 memcpy(buf, rtsx_get_cmd_data(chip), buf_len);

 return STATUS_SUCCESS;
}
