
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int BIT_LTE_MUX_CTRL_PATH ;
 int REG_SYS_SDIO_CTRL ;
 int rtw_write32_clr (struct rtw_dev*,int ,int ) ;
 int rtw_write32_set (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void rtw_coex_coex_ctrl_owner(struct rtw_dev *rtwdev, bool wifi_control)
{
 if (wifi_control)
  rtw_write32_set(rtwdev, REG_SYS_SDIO_CTRL, BIT_LTE_MUX_CTRL_PATH);
 else
  rtw_write32_clr(rtwdev, REG_SYS_SDIO_CTRL, BIT_LTE_MUX_CTRL_PATH);
}
