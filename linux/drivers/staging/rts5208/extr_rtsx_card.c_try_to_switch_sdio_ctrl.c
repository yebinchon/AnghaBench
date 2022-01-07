
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int sd_int; } ;


 int LDO3318_PWR_MASK ;
 int LDO_ON ;
 int PWR_GATE_CTRL ;
 int SDIO_BUS_CTRL ;
 int SDIO_CD_CTRL ;
 int SDIO_CTRL ;
 int dev_dbg (int ,char*,int,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int,int*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

void try_to_switch_sdio_ctrl(struct rtsx_chip *chip)
{
 u8 reg1 = 0, reg2 = 0;

 rtsx_read_register(chip, 0xFF34, &reg1);
 rtsx_read_register(chip, 0xFF38, &reg2);
 dev_dbg(rtsx_dev(chip), "reg 0xFF34: 0x%x, reg 0xFF38: 0x%x\n",
  reg1, reg2);
 if ((reg1 & 0xC0) && (reg2 & 0xC0)) {
  chip->sd_int = 1;
  rtsx_write_register(chip, SDIO_CTRL, 0xFF,
        SDIO_BUS_CTRL | SDIO_CD_CTRL);
  rtsx_write_register(chip, PWR_GATE_CTRL,
        LDO3318_PWR_MASK, LDO_ON);
 }
}
