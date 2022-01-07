
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u8 ;
typedef int __u16 ;
 scalar_t__ USB_REQ_GET_DESCRIPTOR ;
 int snprintf (char*,size_t,char*,char*,char*,int,int) ;

__attribute__((used)) static void usb_decode_get_set_descriptor(__u8 bRequestType, __u8 bRequest,
       __u16 wValue, __u16 wIndex,
       __u16 wLength, char *str, size_t size)
{
 char *s;

 switch (wValue >> 8) {
 case 140:
  s = "Device";
  break;
 case 142:
  s = "Configuration";
  break;
 case 128:
  s = "String";
  break;
 case 136:
  s = "Interface";
  break;
 case 137:
  s = "Endpoint";
  break;
 case 138:
  s = "Device Qualifier";
  break;
 case 132:
  s = "Other Speed Config";
  break;
 case 134:
  s = "Interface Power";
  break;
 case 133:
  s = "OTG";
  break;
 case 141:
  s = "Debug";
  break;
 case 135:
  s = "Interface Association";
  break;
 case 143:
  s = "BOS";
  break;
 case 139:
  s = "Device Capability";
  break;
 case 131:
  s = "Pipe Usage";
  break;
 case 129:
  s = "SS Endpoint Companion";
  break;
 case 130:
  s = "SSP Isochronous Endpoint Companion";
  break;
 default:
  s = "UNKNOWN";
  break;
 }

 snprintf(str, size, "%s %s Descriptor(Index = %d, Length = %d)",
  bRequest == USB_REQ_GET_DESCRIPTOR ? "Get" : "Set",
  s, wValue & 0xff, wLength);
}
