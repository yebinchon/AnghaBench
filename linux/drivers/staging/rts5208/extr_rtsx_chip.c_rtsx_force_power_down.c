
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 scalar_t__ CHECK_LUN_MODE (struct rtsx_chip*,int ) ;
 int FPDCTL ;
 int MS_OC_POWER_DOWN ;
 int OC_PDCTL ;
 int SD_MS_2LUN ;
 int SD_OC_POWER_DOWN ;
 int SSC_PDCTL ;
 int SSC_POWER_DOWN ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

int rtsx_force_power_down(struct rtsx_chip *chip, u8 ctl)
{
 int retval;
 u8 mask = 0, val = 0;

 if (ctl & SSC_PDCTL)
  mask |= SSC_POWER_DOWN;
 if (mask) {
  val = mask;
  retval = rtsx_write_register(chip, FPDCTL, mask, val);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
