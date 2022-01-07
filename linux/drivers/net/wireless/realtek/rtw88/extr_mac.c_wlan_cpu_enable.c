
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int BIT_FEN_CPUEN ;
 int BIT_WLMCU_IOIF ;
 scalar_t__ REG_RSV_CTRL ;
 scalar_t__ REG_SYS_FUNC_EN ;
 int rtw_write8_clr (struct rtw_dev*,scalar_t__,int ) ;
 int rtw_write8_set (struct rtw_dev*,scalar_t__,int ) ;

__attribute__((used)) static void wlan_cpu_enable(struct rtw_dev *rtwdev, bool enable)
{
 if (enable) {

  rtw_write8_set(rtwdev, REG_RSV_CTRL + 1, BIT_WLMCU_IOIF);


  rtw_write8_set(rtwdev, REG_SYS_FUNC_EN + 1, BIT_FEN_CPUEN);
 } else {

  rtw_write8_clr(rtwdev, REG_SYS_FUNC_EN + 1, BIT_FEN_CPUEN);


  rtw_write8_clr(rtwdev, REG_RSV_CTRL + 1, BIT_WLMCU_IOIF);
 }
}
