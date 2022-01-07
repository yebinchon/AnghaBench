
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int MS_INT_CMDNK ;
 int MS_INT_ERR ;
 int MS_TRANS_CFG ;
 int NO_WAIT_INT ;
 int PRO_WRITE_REG ;
 int Pro_DataCount1 ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WAIT_INT ;
 int XC_CHG_POWER ;
 int ms_cleanup_work (struct rtsx_chip*) ;
 int ms_send_cmd (struct rtsx_chip*,int ,int ) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int ,int ,int) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;

__attribute__((used)) static int msxc_change_power(struct rtsx_chip *chip, u8 mode)
{
 int retval;
 u8 buf[6];

 ms_cleanup_work(chip);

 retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 buf[0] = 0;
 buf[1] = mode;
 buf[2] = 0;
 buf[3] = 0;
 buf[4] = 0;
 buf[5] = 0;

 retval = ms_write_bytes(chip, PRO_WRITE_REG, 6, NO_WAIT_INT, buf, 6);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = ms_send_cmd(chip, XC_CHG_POWER, WAIT_INT);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = rtsx_read_register(chip, MS_TRANS_CFG, buf);
 if (retval)
  return retval;

 if (buf[0] & (MS_INT_CMDNK | MS_INT_ERR))
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
