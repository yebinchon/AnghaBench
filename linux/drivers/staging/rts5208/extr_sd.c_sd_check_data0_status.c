
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int REG_SD_STAT1 ;
 int SD_BUSY ;
 int SD_DAT0_STATUS ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int sd_set_err_code (struct rtsx_chip*,int ) ;

__attribute__((used)) static int sd_check_data0_status(struct rtsx_chip *chip)
{
 int retval;
 u8 stat;

 retval = rtsx_read_register(chip, REG_SD_STAT1, &stat);
 if (retval)
  return retval;

 if (!(stat & SD_DAT0_STATUS)) {
  sd_set_err_code(chip, SD_BUSY);
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
