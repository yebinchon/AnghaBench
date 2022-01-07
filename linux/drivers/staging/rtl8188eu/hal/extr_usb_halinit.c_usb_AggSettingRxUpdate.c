
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_data_8188e {int UsbRxAggMode; int UsbRxAggPageCount; int UsbRxAggPageTimeout; int UsbRxAggBlockCount; int UsbRxAggBlockTimeout; int HwRxPageSize; } ;
struct adapter {struct hal_data_8188e* HalData; } ;







 int REG_RXDMA_AGG_PG_TH ;
 int REG_TRXDMA_CTRL ;
 int REG_USB_AGG_TH ;
 int REG_USB_AGG_TO ;
 int REG_USB_SPECIAL_OPTION ;
 int RXDMA_AGG_EN ;
 int USB_AGG_EN ;




 int usb_read8 (struct adapter*,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void usb_AggSettingRxUpdate(struct adapter *Adapter)
{
 struct hal_data_8188e *haldata = Adapter->HalData;
 u8 valueDMA;
 u8 valueUSB;

 valueDMA = usb_read8(Adapter, REG_TRXDMA_CTRL);
 valueUSB = usb_read8(Adapter, REG_USB_SPECIAL_OPTION);

 switch (haldata->UsbRxAggMode) {
 case 130:
  valueDMA |= RXDMA_AGG_EN;
  valueUSB &= ~USB_AGG_EN;
  break;
 case 128:
  valueDMA &= ~RXDMA_AGG_EN;
  valueUSB |= USB_AGG_EN;
  break;
 case 129:
  valueDMA |= RXDMA_AGG_EN;
  valueUSB |= USB_AGG_EN;
  break;
 case 131:
 default:
  valueDMA &= ~RXDMA_AGG_EN;
  valueUSB &= ~USB_AGG_EN;
  break;
 }

 usb_write8(Adapter, REG_TRXDMA_CTRL, valueDMA);
 usb_write8(Adapter, REG_USB_SPECIAL_OPTION, valueUSB);

 switch (haldata->UsbRxAggMode) {
 case 130:
  usb_write8(Adapter, REG_RXDMA_AGG_PG_TH, haldata->UsbRxAggPageCount);
  usb_write8(Adapter, REG_RXDMA_AGG_PG_TH + 1, haldata->UsbRxAggPageTimeout);
  break;
 case 128:
  usb_write8(Adapter, REG_USB_AGG_TH, haldata->UsbRxAggBlockCount);
  usb_write8(Adapter, REG_USB_AGG_TO, haldata->UsbRxAggBlockTimeout);
  break;
 case 129:
  usb_write8(Adapter, REG_RXDMA_AGG_PG_TH, haldata->UsbRxAggPageCount);
  usb_write8(Adapter, REG_RXDMA_AGG_PG_TH + 1, (haldata->UsbRxAggPageTimeout & 0x1F));
  usb_write8(Adapter, REG_USB_AGG_TH, haldata->UsbRxAggBlockCount);
  usb_write8(Adapter, REG_USB_AGG_TO, haldata->UsbRxAggBlockTimeout);
  break;
 case 131:
 default:

  break;
 }

 switch (135) {
 case 135:
  haldata->HwRxPageSize = 128;
  break;
 case 132:
  haldata->HwRxPageSize = 64;
  break;
 case 134:
  haldata->HwRxPageSize = 256;
  break;
 case 133:
  haldata->HwRxPageSize = 512;
  break;
 case 136:
  haldata->HwRxPageSize = 1024;
  break;
 default:
  break;
 }
}
