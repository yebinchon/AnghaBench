
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtsx_chip {int product_id; } ;


 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 scalar_t__ CHK_SDIO_EXIST (struct rtsx_chip*) ;
 int dev_dbg (int ,char*,int,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_cfg_dw (struct rtsx_chip*,int,int,int*) ;
 int rtsx_write_cfg_dw (struct rtsx_chip*,int,int,int,int) ;
 int rtsx_write_config_byte (struct rtsx_chip*,int,int) ;

__attribute__((used)) static void rtsx_handle_pm_dstate(struct rtsx_chip *chip, u8 dstate)
{
 u32 ultmp;

 dev_dbg(rtsx_dev(chip), "%04x set pm_dstate to %d\n",
  chip->product_id, dstate);

 if (CHK_SDIO_EXIST(chip)) {
  u8 func_no;

  if (CHECK_PID(chip, 0x5288))
   func_no = 2;
  else
   func_no = 1;

  rtsx_read_cfg_dw(chip, func_no, 0x84, &ultmp);
  dev_dbg(rtsx_dev(chip), "pm_dstate of function %d: 0x%x\n",
   (int)func_no, ultmp);
  rtsx_write_cfg_dw(chip, func_no, 0x84, 0xFF, dstate);
 }

 rtsx_write_config_byte(chip, 0x44, dstate);
 rtsx_write_config_byte(chip, 0x45, 0);
}
