
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int PHYADDR ;
 int PHYDATA0 ;
 int PHYDATA1 ;
 int PHYRWCTL ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

int rtsx_write_phy_register(struct rtsx_chip *chip, u8 addr, u16 val)
{
 int retval;
 bool finished = 0;
 int i;
 u8 tmp;

 retval = rtsx_write_register(chip, PHYDATA0, 0xFF, (u8)val);
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, PHYDATA1, 0xFF, (u8)(val >> 8));
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, PHYADDR, 0xFF, addr);
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, PHYRWCTL, 0xFF, 0x81);
 if (retval)
  return retval;

 for (i = 0; i < 100000; i++) {
  retval = rtsx_read_register(chip, PHYRWCTL, &tmp);
  if (retval)
   return retval;
  if (!(tmp & 0x80)) {
   finished = 1;
   break;
  }
 }

 if (!finished)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
