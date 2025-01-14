
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_read_phy_register (struct rtsx_chip*,int,int*) ;
 int rtsx_write_phy_register (struct rtsx_chip*,int,int) ;

int rtsx_clr_phy_reg_bit(struct rtsx_chip *chip, u8 reg, u8 bit)
{
 int retval;
 u16 value;

 retval = rtsx_read_phy_register(chip, reg, &value);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (value & (1 << bit)) {
  value &= ~(1 << bit);
  retval = rtsx_write_phy_register(chip, reg, value);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
