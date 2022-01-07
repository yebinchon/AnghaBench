
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int DMACTL ;
 int RBCTL ;
 int RTSX_HCBAR ;
 int RTSX_HCBCTLR ;
 int RTSX_HDBCTLR ;
 int STOP_CMD ;
 int STOP_DMA ;
 int dev_dbg (int ,char*,int,int ) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int,int *) ;
 int rtsx_readl (struct rtsx_chip*,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int rtsx_writel (struct rtsx_chip*,int ,int ) ;

void rtsx_stop_cmd(struct rtsx_chip *chip, int card)
{
 int i;

 for (i = 0; i <= 8; i++) {
  int addr = RTSX_HCBAR + i * 4;
  u32 reg;

  reg = rtsx_readl(chip, addr);
  dev_dbg(rtsx_dev(chip), "BAR (0x%02x): 0x%08x\n", addr, reg);
 }
 rtsx_writel(chip, RTSX_HCBCTLR, STOP_CMD);
 rtsx_writel(chip, RTSX_HDBCTLR, STOP_DMA);

 for (i = 0; i < 16; i++) {
  u16 addr = 0xFE20 + (u16)i;
  u8 val;

  rtsx_read_register(chip, addr, &val);
  dev_dbg(rtsx_dev(chip), "0x%04X: 0x%02x\n", addr, val);
 }

 rtsx_write_register(chip, DMACTL, 0x80, 0x80);
 rtsx_write_register(chip, RBCTL, 0x80, 0x80);
}
