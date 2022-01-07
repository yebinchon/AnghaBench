
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int USB_DIR_IN ;



 int USB_RECIP_MASK ;
 int snprintf (char*,size_t,char*,int,...) ;

__attribute__((used)) static void usb_decode_get_status(__u8 bRequestType, __u16 wIndex,
      __u16 wLength, char *str, size_t size)
{
 switch (bRequestType & USB_RECIP_MASK) {
 case 130:
  snprintf(str, size, "Get Device Status(Length = %d)", wLength);
  break;
 case 128:
  snprintf(str, size,
    "Get Interface Status(Intf = %d, Length = %d)",
    wIndex, wLength);
  break;
 case 129:
  snprintf(str, size, "Get Endpoint Status(ep%d%s)",
    wIndex & ~USB_DIR_IN,
    wIndex & USB_DIR_IN ? "in" : "out");
  break;
 }
}
