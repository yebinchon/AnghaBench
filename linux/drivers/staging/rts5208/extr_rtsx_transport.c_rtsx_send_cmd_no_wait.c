
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_chip {int host_cmds_addr; int ci; } ;


 int BIT (int) ;
 int RTSX_HCBAR ;
 int RTSX_HCBCTLR ;
 int rtsx_writel (struct rtsx_chip*,int ,int) ;

void rtsx_send_cmd_no_wait(struct rtsx_chip *chip)
{
 u32 val = BIT(31);

 rtsx_writel(chip, RTSX_HCBAR, chip->host_cmds_addr);

 val |= (u32)(chip->ci * 4) & 0x00FFFFFF;

 val |= 0x40000000;
 rtsx_writel(chip, RTSX_HCBCTLR, val);
}
