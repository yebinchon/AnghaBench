
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int EFUSE_CTRL ;
 int EFUSE_DATA ;
 int STATUS_SUCCESS ;
 int STATUS_TIMEDOUT ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int udelay (int) ;

int rtsx_read_efuse(struct rtsx_chip *chip, u8 addr, u8 *val)
{
 int retval;
 int i;
 u8 data = 0;

 retval = rtsx_write_register(chip, EFUSE_CTRL, 0xFF, 0x80 | addr);
 if (retval)
  return retval;

 for (i = 0; i < 100; i++) {
  retval = rtsx_read_register(chip, EFUSE_CTRL, &data);
  if (retval)
   return retval;
  if (!(data & 0x80))
   break;
  udelay(1);
 }

 if (data & 0x80)
  return STATUS_TIMEDOUT;

 retval = rtsx_read_register(chip, EFUSE_DATA, &data);
 if (retval)
  return retval;
 if (val)
  *val = data;

 return STATUS_SUCCESS;
}
