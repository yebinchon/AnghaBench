
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_data_8188e {int RegFwHwTxQCtrl; int RegReg542; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int BIT (int) ;
 scalar_t__ REG_FWHW_TXQ_CTRL ;
 scalar_t__ REG_TBTT_PROHIBIT ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void ResumeTxBeacon(struct adapter *adapt)
{
 struct hal_data_8188e *haldata = adapt->HalData;




 usb_write8(adapt, REG_FWHW_TXQ_CTRL + 2, (haldata->RegFwHwTxQCtrl) | BIT(6));
 haldata->RegFwHwTxQCtrl |= BIT(6);
 usb_write8(adapt, REG_TBTT_PROHIBIT + 1, 0xff);
 haldata->RegReg542 |= BIT(0);
 usb_write8(adapt, REG_TBTT_PROHIBIT + 2, haldata->RegReg542);
}
