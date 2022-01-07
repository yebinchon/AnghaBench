
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int BIT_BT_AOD_GPIO3 ;
 int BIT_BT_PTA_EN ;
 int BIT_EN_BCN_FUNCTION ;
 int BIT_GNT_BT_POLARITY ;
 int BIT_PTA_EDCCA_EN ;
 int BIT_PTA_WL_TX_EN ;
 int REG_BCN_CTRL ;
 int REG_BT_COEX_V2 ;
 int REG_BT_STAT_CTRL ;
 int REG_BT_TDMA_TIME ;
 int REG_GPIO_MUXCFG ;
 int REG_QUEUE_CTRL ;
 int rtw_write32_set (struct rtw_dev*,int ,int ) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;
 int rtw_write8_clr (struct rtw_dev*,int ,int ) ;
 int rtw_write8_set (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw8822b_coex_cfg_init(struct rtw_dev *rtwdev)
{

 rtw_write8_set(rtwdev, REG_BCN_CTRL, BIT_EN_BCN_FUNCTION);



 rtw_write8_set(rtwdev, REG_BT_TDMA_TIME, 0x05);


 rtw_write8(rtwdev, REG_BT_STAT_CTRL, 0x1);


 rtw_write32_set(rtwdev, REG_GPIO_MUXCFG, BIT_BT_PTA_EN);
 rtw_write32_set(rtwdev, REG_GPIO_MUXCFG, BIT_BT_AOD_GPIO3);


 rtw_write8_set(rtwdev, REG_QUEUE_CTRL, BIT_PTA_WL_TX_EN);

 rtw_write8_clr(rtwdev, REG_QUEUE_CTRL, BIT_PTA_EDCCA_EN);

 rtw_write8_set(rtwdev, REG_BT_COEX_V2, BIT_GNT_BT_POLARITY);
}
