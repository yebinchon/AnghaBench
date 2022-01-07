
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int BIT_3WIRE_PI_ON ;
 int BIT_3WIRE_RX_EN ;
 int BIT_3WIRE_TX_EN ;
 int BIT_CCK_OFDM_BLK_EN ;
 int REG_3WIRE ;
 int REG_3WIRE2 ;
 int REG_ENCCK ;
 int rtw_write32_clr (struct rtw_dev*,int ,int) ;
 int rtw_write32_set (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw8822c_header_file_init(struct rtw_dev *rtwdev, bool pre)
{
 rtw_write32_set(rtwdev, REG_3WIRE, BIT_3WIRE_TX_EN | BIT_3WIRE_RX_EN);
 rtw_write32_set(rtwdev, REG_3WIRE, BIT_3WIRE_PI_ON);
 rtw_write32_set(rtwdev, REG_3WIRE2, BIT_3WIRE_TX_EN | BIT_3WIRE_RX_EN);
 rtw_write32_set(rtwdev, REG_3WIRE2, BIT_3WIRE_PI_ON);

 if (pre)
  rtw_write32_clr(rtwdev, REG_ENCCK, BIT_CCK_OFDM_BLK_EN);
 else
  rtw_write32_set(rtwdev, REG_ENCCK, BIT_CCK_OFDM_BLK_EN);
}
