
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_data_8188e {int UsbTxAggMode; int UsbTxAggDescNum; int UsbRxAggBlockCount; int UsbRxAggBlockTimeout; int UsbRxAggPageCount; int UsbRxAggPageTimeout; int UsbRxAggMode; int interfaceIndex; int UsbBulkOutSize; } ;
struct dvobj_priv {int RtNumOutPipes; int RtNumInPipes; int InterfaceNumber; scalar_t__ ishighspeed; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int HalUsbSetQueuePipeMapping8188EUsb (struct adapter*,int ,int ) ;
 int USB_FULL_SPEED_BULK_SIZE ;
 int USB_HIGH_SPEED_BULK_SIZE ;
 int USB_RX_AGG_DMA ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;

void rtw_hal_chip_configure(struct adapter *adapt)
{
 struct hal_data_8188e *haldata = adapt->HalData;
 struct dvobj_priv *pdvobjpriv = adapter_to_dvobj(adapt);

 if (pdvobjpriv->ishighspeed)
  haldata->UsbBulkOutSize = USB_HIGH_SPEED_BULK_SIZE;
 else
  haldata->UsbBulkOutSize = USB_FULL_SPEED_BULK_SIZE;

 haldata->interfaceIndex = pdvobjpriv->InterfaceNumber;

 haldata->UsbTxAggMode = 1;
 haldata->UsbTxAggDescNum = 0x6;

 haldata->UsbRxAggMode = USB_RX_AGG_DMA;
 haldata->UsbRxAggBlockCount = 8;
 haldata->UsbRxAggBlockTimeout = 0x6;
 haldata->UsbRxAggPageCount = 48;
 haldata->UsbRxAggPageTimeout = 0x4;

 HalUsbSetQueuePipeMapping8188EUsb(adapt,
    pdvobjpriv->RtNumInPipes, pdvobjpriv->RtNumOutPipes);
}
