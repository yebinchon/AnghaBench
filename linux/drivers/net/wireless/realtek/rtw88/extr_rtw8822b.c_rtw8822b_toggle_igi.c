
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_hal {int antenna_rx; } ;
struct rtw_dev {struct rtw_hal hal; } ;


 int MASKBYTE0 ;
 int REG_RXIGI_A ;
 int REG_RXIGI_B ;
 int REG_RXPSEL ;
 int rtw_read32_mask (struct rtw_dev*,int ,int) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;

__attribute__((used)) static void rtw8822b_toggle_igi(struct rtw_dev *rtwdev)
{
 struct rtw_hal *hal = &rtwdev->hal;
 u32 igi;

 igi = rtw_read32_mask(rtwdev, REG_RXIGI_A, 0x7f);
 rtw_write32_mask(rtwdev, REG_RXIGI_A, 0x7f, igi - 2);
 rtw_write32_mask(rtwdev, REG_RXIGI_A, 0x7f, igi);
 rtw_write32_mask(rtwdev, REG_RXIGI_B, 0x7f, igi - 2);
 rtw_write32_mask(rtwdev, REG_RXIGI_B, 0x7f, igi);

 rtw_write32_mask(rtwdev, REG_RXPSEL, MASKBYTE0, 0x0);
 rtw_write32_mask(rtwdev, REG_RXPSEL, MASKBYTE0,
    hal->antenna_rx | (hal->antenna_rx << 4));
}
