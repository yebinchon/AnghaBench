
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int MS_FLASH_READ_ERROR ;
 int NO_WAIT_INT ;
 int READ_REG ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int STS_UCDT ;
 int STS_UCEX ;
 int STS_UCFG ;
 int StatusReg0 ;
 int ms_read_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int,int ,int ) ;

__attribute__((used)) static int ms_read_status_reg(struct rtsx_chip *chip)
{
 int retval;
 u8 val[2];

 retval = ms_set_rw_reg_addr(chip, StatusReg0, 2, 0, 0);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = ms_read_bytes(chip, READ_REG, 2, NO_WAIT_INT, val, 2);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (val[1] & (STS_UCDT | STS_UCEX | STS_UCFG)) {
  ms_set_err_code(chip, MS_FLASH_READ_ERROR);
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
