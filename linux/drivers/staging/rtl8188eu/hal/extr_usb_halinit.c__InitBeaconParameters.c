
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_data_8188e {void* RegCR_1; void* RegReg542; void* RegFwHwTxQCtrl; void* RegTxPause; void* RegBcnCtrlVal; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int BCN_DMA_ATIME_INT_TIME ;
 int DRIVER_EARLY_INT_TIME ;
 int REG_BCNDMATIM ;
 scalar_t__ REG_BCNTCFG ;
 scalar_t__ REG_BCN_CTRL ;
 scalar_t__ REG_CR ;
 int REG_DRVERLYINT ;
 scalar_t__ REG_FWHW_TXQ_CTRL ;
 scalar_t__ REG_TBTT_PROHIBIT ;
 scalar_t__ REG_TXPAUSE ;
 void* usb_read8 (struct adapter*,scalar_t__) ;
 int usb_write16 (struct adapter*,scalar_t__,int) ;
 int usb_write8 (struct adapter*,int ,int ) ;

__attribute__((used)) static void _InitBeaconParameters(struct adapter *Adapter)
{
 struct hal_data_8188e *haldata = Adapter->HalData;

 usb_write16(Adapter, REG_BCN_CTRL, 0x1010);


 usb_write16(Adapter, REG_TBTT_PROHIBIT, 0x6404);
 usb_write8(Adapter, REG_DRVERLYINT, DRIVER_EARLY_INT_TIME);
 usb_write8(Adapter, REG_BCNDMATIM, BCN_DMA_ATIME_INT_TIME);



 usb_write16(Adapter, REG_BCNTCFG, 0x660F);

 haldata->RegBcnCtrlVal = usb_read8(Adapter, REG_BCN_CTRL);
 haldata->RegTxPause = usb_read8(Adapter, REG_TXPAUSE);
 haldata->RegFwHwTxQCtrl = usb_read8(Adapter, REG_FWHW_TXQ_CTRL + 2);
 haldata->RegReg542 = usb_read8(Adapter, REG_TBTT_PROHIBIT + 2);
 haldata->RegCR_1 = usb_read8(Adapter, REG_CR + 1);
}
