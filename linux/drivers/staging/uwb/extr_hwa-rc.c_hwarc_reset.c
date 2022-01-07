
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {struct hwarc* priv; } ;
struct hwarc {int usb_dev; } ;


 int usb_lock_device_for_reset (int ,int *) ;
 int usb_reset_device (int ) ;
 int usb_unlock_device (int ) ;

__attribute__((used)) static
int hwarc_reset(struct uwb_rc *uwb_rc)
{
 struct hwarc *hwarc = uwb_rc->priv;
 int result;


 result = usb_lock_device_for_reset(hwarc->usb_dev, ((void*)0));
 if (result >= 0) {
  result = usb_reset_device(hwarc->usb_dev);
  usb_unlock_device(hwarc->usb_dev);
 }

 return result;
}
