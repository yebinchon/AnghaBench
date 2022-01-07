
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_chip {int ss_en; } ;


 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 scalar_t__ CHK_SDIO_EXIST (struct rtsx_chip*) ;
 int CHK_SDIO_IGNORED (struct rtsx_chip*) ;
 int rtsx_read_cfg_dw (struct rtsx_chip*,int,int,int*) ;

__attribute__((used)) static bool rtsx_is_ss_allowed(struct rtsx_chip *chip)
{
 u32 val;

 if (!chip->ss_en || CHECK_PID(chip, 0x5288))
  return 0;

 if (CHK_SDIO_EXIST(chip) && !CHK_SDIO_IGNORED(chip)) {
  rtsx_read_cfg_dw(chip, 1, 0x04, &val);
  if (val & 0x07)
   return 0;
 }

 return 1;
}
