
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int MS_INT_CMDNK ;
 int MS_INT_ERR ;
 int MS_TRANSFER ;
 int MS_TRANSFER_ERR ;
 int MS_TRANS_CFG ;
 int STATUS_SUCCESS ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;

__attribute__((used)) static int check_ms_err(struct rtsx_chip *chip)
{
 int retval;
 u8 val;

 retval = rtsx_read_register(chip, MS_TRANSFER, &val);
 if (retval != STATUS_SUCCESS)
  return 1;
 if (val & MS_TRANSFER_ERR)
  return 1;

 retval = rtsx_read_register(chip, MS_TRANS_CFG, &val);
 if (retval != STATUS_SUCCESS)
  return 1;

 if (val & (MS_INT_ERR | MS_INT_CMDNK))
  return 1;

 return 0;
}
