
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int BIT_BTGP_JTAG_EN ;
 int BIT_BTGP_SPI_EN ;
 int BIT_DBG_GNT_WL_BT ;
 int BIT_FSPI_EN ;
 int BIT_LED1DIS ;
 scalar_t__ REG_GPIO_MUXCFG ;
 scalar_t__ REG_PAD_CTRL1 ;
 scalar_t__ REG_SYS_SDIO_CTRL ;
 int rtw_write8_mask (struct rtw_dev*,scalar_t__,int,int ) ;

__attribute__((used)) static void rtw8822b_coex_cfg_gnt_debug(struct rtw_dev *rtwdev)
{
 rtw_write8_mask(rtwdev, REG_PAD_CTRL1 + 2, BIT_BTGP_SPI_EN >> 16, 0);
 rtw_write8_mask(rtwdev, REG_PAD_CTRL1 + 3, BIT_BTGP_JTAG_EN >> 24, 0);
 rtw_write8_mask(rtwdev, REG_GPIO_MUXCFG + 2, BIT_FSPI_EN >> 16, 0);
 rtw_write8_mask(rtwdev, REG_PAD_CTRL1 + 1, BIT_LED1DIS >> 8, 0);
 rtw_write8_mask(rtwdev, REG_SYS_SDIO_CTRL + 3, BIT_DBG_GNT_WL_BT >> 24, 0);
}
