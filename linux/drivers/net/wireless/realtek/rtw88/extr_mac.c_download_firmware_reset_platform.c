
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int BIT_CPU_CLK_EN ;
 int BIT_WL_PLATFORM_RST ;
 scalar_t__ REG_CPU_DMEM_CON ;
 scalar_t__ REG_SYS_CLK_CTRL ;
 int rtw_write8_clr (struct rtw_dev*,scalar_t__,int) ;
 int rtw_write8_set (struct rtw_dev*,scalar_t__,int) ;

__attribute__((used)) static void download_firmware_reset_platform(struct rtw_dev *rtwdev)
{
 rtw_write8_clr(rtwdev, REG_CPU_DMEM_CON + 2, BIT_WL_PLATFORM_RST >> 16);
 rtw_write8_clr(rtwdev, REG_SYS_CLK_CTRL + 1, BIT_CPU_CLK_EN >> 8);
 rtw_write8_set(rtwdev, REG_CPU_DMEM_CON + 2, BIT_WL_PLATFORM_RST >> 16);
 rtw_write8_set(rtwdev, REG_SYS_CLK_CTRL + 1, BIT_CPU_CLK_EN >> 8);
}
