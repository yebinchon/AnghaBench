
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
 int dev_dbg (int ,char*,int,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int wait_timeout (int) ;

int rtsx_write_efuse(struct rtsx_chip *chip, u8 addr, u8 val)
{
 int retval;
 int i, j;
 u8 data = 0, tmp = 0xFF;

 for (i = 0; i < 8; i++) {
  if (val & (u8)(1 << i))
   continue;

  tmp &= (~(u8)(1 << i));
  dev_dbg(rtsx_dev(chip), "Write 0x%x to 0x%x\n", tmp, addr);

  retval = rtsx_write_register(chip, EFUSE_DATA, 0xFF, tmp);
  if (retval)
   return retval;
  retval = rtsx_write_register(chip, EFUSE_CTRL, 0xFF,
          0xA0 | addr);
  if (retval)
   return retval;

  for (j = 0; j < 100; j++) {
   retval = rtsx_read_register(chip, EFUSE_CTRL, &data);
   if (retval)
    return retval;
   if (!(data & 0x80))
    break;
   wait_timeout(3);
  }

  if (data & 0x80)
   return STATUS_TIMEDOUT;

  wait_timeout(5);
 }

 return STATUS_SUCCESS;
}
