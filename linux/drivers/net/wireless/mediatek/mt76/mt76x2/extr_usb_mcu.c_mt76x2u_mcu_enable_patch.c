
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt76_usb {int data; } ;
struct TYPE_2__ {struct mt76_usb usb; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
typedef int data ;


 int MT_VEND_DEV_MODE ;
 int USB_DIR_OUT ;
 int USB_TYPE_CLASS ;
 int memcpy (int ,int const*,int) ;
 int mt76u_vendor_request (TYPE_1__*,int ,int,int,int ,int ,int) ;

__attribute__((used)) static void mt76x2u_mcu_enable_patch(struct mt76x02_dev *dev)
{
 struct mt76_usb *usb = &dev->mt76.usb;
 static const u8 data[] = {
  0x6f, 0xfc, 0x08, 0x01,
  0x20, 0x04, 0x00, 0x00,
  0x00, 0x09, 0x00,
 };

 memcpy(usb->data, data, sizeof(data));
 mt76u_vendor_request(&dev->mt76, MT_VEND_DEV_MODE,
        USB_DIR_OUT | USB_TYPE_CLASS,
        0x12, 0, usb->data, sizeof(data));
}
