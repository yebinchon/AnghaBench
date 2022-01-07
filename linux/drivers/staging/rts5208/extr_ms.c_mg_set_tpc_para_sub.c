
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_chip {int dummy; } ;


 int NO_WAIT_INT ;
 int PRO_WRITE_REG ;
 int Pro_DataCount1 ;
 int Pro_TPCParm ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int ,int ,int) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,scalar_t__*,int) ;

__attribute__((used)) static int mg_set_tpc_para_sub(struct rtsx_chip *chip, int type,
          u8 mg_entry_num)
{
 int retval;
 u8 buf[6];

 if (type == 0)
  retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_TPCParm, 1);
 else
  retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);

 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 buf[0] = 0;
 buf[1] = 0;
 if (type == 1) {
  buf[2] = 0;
  buf[3] = 0;
  buf[4] = 0;
  buf[5] = mg_entry_num;
 }
 retval = ms_write_bytes(chip, PRO_WRITE_REG, (type == 0) ? 1 : 6,
    NO_WAIT_INT, buf, 6);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
