
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xd_info {int addr_cycle; } ;
struct rtsx_chip {struct xd_info xd_card; } ;


 int WRITE_REG_CMD ;
 int XD_ADDRESS0 ;
 int XD_ADDRESS1 ;
 int XD_ADDRESS2 ;
 int XD_ADDRESS3 ;
 int XD_BA_NO_TRANSFORM ;
 int XD_CALC_ECC ;
 int XD_CFG ;


 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;

__attribute__((used)) static void xd_assign_phy_addr(struct rtsx_chip *chip, u32 addr, u8 mode)
{
 struct xd_info *xd_card = &chip->xd_card;

 switch (mode) {
 case 128:
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_ADDRESS0, 0xFF, 0);
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_ADDRESS1, 0xFF, (u8)addr);
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_ADDRESS2,
        0xFF, (u8)(addr >> 8));
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_ADDRESS3,
        0xFF, (u8)(addr >> 16));
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_CFG, 0xFF,
        xd_card->addr_cycle |
        XD_CALC_ECC |
        XD_BA_NO_TRANSFORM);
  break;

 case 129:
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_ADDRESS0, 0xFF, (u8)addr);
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_ADDRESS1,
        0xFF, (u8)(addr >> 8));
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_ADDRESS2,
        0xFF, (u8)(addr >> 16));
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_CFG, 0xFF,
        (xd_card->addr_cycle - 1) | XD_CALC_ECC |
   XD_BA_NO_TRANSFORM);
  break;

 default:
  break;
 }
}
