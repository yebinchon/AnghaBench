
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int MT_VEND_DEV_MODE ;
 int MT_VEND_DEV_MODE_RESET ;
 int USB_DIR_OUT ;
 int mt7601u_vendor_request (struct mt7601u_dev*,int ,int ,int ,int ,int *,int ) ;

void mt7601u_vendor_reset(struct mt7601u_dev *dev)
{
 mt7601u_vendor_request(dev, MT_VEND_DEV_MODE, USB_DIR_OUT,
          MT_VEND_DEV_MODE_RESET, 0, ((void*)0), 0);
}
