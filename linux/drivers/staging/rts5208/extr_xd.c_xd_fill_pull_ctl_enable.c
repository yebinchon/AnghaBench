
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int CARD_PULL_CTL1 ;
 int CARD_PULL_CTL2 ;
 int CARD_PULL_CTL3 ;
 int CARD_PULL_CTL4 ;
 int CARD_PULL_CTL5 ;
 int CARD_PULL_CTL6 ;
 scalar_t__ CHECK_BARO_PKG (struct rtsx_chip*,int ) ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 int MS_D4_PD ;
 int MS_D5_PD ;
 int MS_INS_PU ;
 int QFN ;
 int SD_CD_PU ;
 int SD_CMD_PD ;
 int SD_WP_PD ;
 int WRITE_REG_CMD ;
 int XD_ALE_PD ;
 int XD_CD_PU ;
 int XD_CE_PU ;
 int XD_CLE_PD ;
 int XD_D0_PD ;
 int XD_D1_PD ;
 int XD_D2_PD ;
 int XD_D3_PD ;
 int XD_D4_PD ;
 int XD_D5_PD ;
 int XD_D6_PD ;
 int XD_D7_PD ;
 int XD_RDY_PU ;
 int XD_RE_PU ;
 int XD_WE_PU ;
 int XD_WP_PD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;

__attribute__((used)) static void xd_fill_pull_ctl_enable(struct rtsx_chip *chip)
{
 if (CHECK_PID(chip, 0x5208)) {
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL1, 0xFF,
        XD_D3_PD | XD_D2_PD | XD_D1_PD | XD_D0_PD);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL2, 0xFF,
        XD_D7_PD | XD_D6_PD | XD_D5_PD | XD_D4_PD);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL3, 0xFF,
        XD_WP_PD | XD_CE_PU | XD_CLE_PD | XD_CD_PU);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL4, 0xFF,
        XD_RDY_PU | XD_WE_PU | XD_RE_PU | XD_ALE_PD);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL5, 0xFF,
        MS_INS_PU | SD_WP_PD | SD_CD_PU | SD_CMD_PD);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL6, 0xFF,
        MS_D5_PD | MS_D4_PD);
 } else if (CHECK_PID(chip, 0x5288)) {
  if (CHECK_BARO_PKG(chip, QFN)) {
   rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL1,
         0xFF, 0x55);
   rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL2,
         0xFF, 0x55);
   rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL3,
         0xFF, 0x53);
   rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PULL_CTL4,
         0xFF, 0xA9);
  }
 }
}
