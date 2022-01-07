
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int CARD_PULL_CTL1 ;
 int CARD_PULL_CTL2 ;
 int CARD_PULL_CTL3 ;
 int CARD_PULL_CTL4 ;
 scalar_t__ CHECK_BARO_PKG (struct rtsx_chip*,int ) ;
 int QFN ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;

__attribute__((used)) static void xd_fill_pull_ctl_stage1_barossa(struct rtsx_chip *chip)
{
 if (CHECK_BARO_PKG(chip, QFN)) {
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL1, 0xFF, 0x55);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL2, 0xFF, 0x55);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL3, 0xFF, 0x4B);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL4, 0xFF, 0x55);
 }
}
