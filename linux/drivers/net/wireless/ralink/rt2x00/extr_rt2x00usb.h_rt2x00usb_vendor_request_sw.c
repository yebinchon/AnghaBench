
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int USB_VENDOR_REQUEST_OUT ;
 int rt2x00usb_vendor_request (struct rt2x00_dev*,int const,int ,int const,int const,int *,int ,int const) ;

__attribute__((used)) static inline int rt2x00usb_vendor_request_sw(struct rt2x00_dev *rt2x00dev,
           const u8 request,
           const u16 offset,
           const u16 value,
           const int timeout)
{
 return rt2x00usb_vendor_request(rt2x00dev, request,
     USB_VENDOR_REQUEST_OUT, offset,
     value, ((void*)0), 0, timeout);
}
