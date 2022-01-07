
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int USB_MULTI_READ ;
 int USB_VENDOR_REQUEST_IN ;
 int rt2x00usb_vendor_request_buff (struct rt2x00_dev*,int ,int ,unsigned int const,void*,int const) ;

__attribute__((used)) static inline void rt2x00usb_register_multiread(struct rt2x00_dev *rt2x00dev,
      const unsigned int offset,
      void *value, const u32 length)
{
 rt2x00usb_vendor_request_buff(rt2x00dev, USB_MULTI_READ,
          USB_VENDOR_REQUEST_IN, offset,
          value, length);
}
