
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int auto_delink_cnt; scalar_t__ card_exist; scalar_t__ asic_code; } ;


 int CHANGE_LINK_STATE ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 int HOST_SLEEP_STATE ;
 int RTSX_STAT_DELINK ;
 int dev_dbg (int ,char*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_enter_L1 (struct rtsx_chip*) ;
 int rtsx_set_phy_reg_bit (struct rtsx_chip*,int,int) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static void rtsx_delink_stage1(struct rtsx_chip *chip, int enter_L1,
          int stage3_cnt)
{
 u8 val;

 rtsx_set_stat(chip, RTSX_STAT_DELINK);

 if (chip->asic_code && CHECK_PID(chip, 0x5208))
  rtsx_set_phy_reg_bit(chip, 0x1C, 2);

 if (chip->card_exist)
  dev_dbg(rtsx_dev(chip), "False card inserted, do force delink\n");
 else
  dev_dbg(rtsx_dev(chip), "No card inserted, do delink\n");

 if (enter_L1)
  rtsx_write_register(chip, HOST_SLEEP_STATE, 0x03, 1);

 if (chip->card_exist)
  val = 0x02;
 else
  val = 0x0A;

 rtsx_write_register(chip, CHANGE_LINK_STATE, val, val);

 if (enter_L1)
  rtsx_enter_L1(chip);

 if (chip->card_exist)
  chip->auto_delink_cnt = stage3_cnt + 1;
}
