
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int USB_DEVICE_TEST_MODE ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_INTRF_FUNC_SUSPEND ;



 int USB_RECIP_MASK ;
 int USB_REQ_CLEAR_FEATURE ;
 int snprintf (char*,size_t,char*,char*,char*,...) ;
 char* usb_decode_device_feature (int) ;
 char* usb_decode_test_mode (int) ;

__attribute__((used)) static void usb_decode_set_clear_feature(__u8 bRequestType,
      __u8 bRequest, __u16 wValue,
      __u16 wIndex, char *str, size_t size)
{
 switch (bRequestType & USB_RECIP_MASK) {
 case 130:
  snprintf(str, size, "%s Device Feature(%s%s)",
    bRequest == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
    usb_decode_device_feature(wValue),
    wValue == USB_DEVICE_TEST_MODE ?
    usb_decode_test_mode(wIndex) : "");
  break;
 case 128:
  snprintf(str, size, "%s Interface Feature(%s)",
    bRequest == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
    wValue == USB_INTRF_FUNC_SUSPEND ?
    "Function Suspend" : "UNKNOWN");
  break;
 case 129:
  snprintf(str, size, "%s Endpoint Feature(%s ep%d%s)",
    bRequest == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
    wValue == USB_ENDPOINT_HALT ? "Halt" : "UNKNOWN",
    wIndex & ~USB_DIR_IN,
    wIndex & USB_DIR_IN ? "in" : "out");
  break;
 }
}
