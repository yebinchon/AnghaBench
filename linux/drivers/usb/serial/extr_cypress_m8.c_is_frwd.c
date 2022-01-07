
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;


 scalar_t__ PRODUCT_ID_CYPHIDCOM_FRWD ;
 scalar_t__ VENDOR_ID_FRWD ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline bool is_frwd(struct usb_device *dev)
{
 return ((le16_to_cpu(dev->descriptor.idVendor) == VENDOR_ID_FRWD) &&
  (le16_to_cpu(dev->descriptor.idProduct) == PRODUCT_ID_CYPHIDCOM_FRWD));
}
