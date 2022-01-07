
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u8 ;
typedef int __u16 ;
 int cpu_to_le16 (int ) ;
 int snprintf (char*,size_t,char*,int,int,int,int,int,int,int,int) ;
 int usb_decode_get_configuration (int ,char*,size_t) ;
 int usb_decode_get_intf (int ,int ,char*,size_t) ;
 int usb_decode_get_set_descriptor (int,int,int ,int ,int ,char*,size_t) ;
 int usb_decode_get_status (int,int ,int ,char*,size_t) ;
 int usb_decode_set_address (int ,char*,size_t) ;
 int usb_decode_set_clear_feature (int,int,int ,int ,char*,size_t) ;
 int usb_decode_set_configuration (int ,char*,size_t) ;
 int usb_decode_set_intf (int ,int ,char*,size_t) ;
 int usb_decode_set_isoch_delay (int ,char*,size_t) ;
 int usb_decode_set_sel (int ,char*,size_t) ;
 int usb_decode_synch_frame (int ,int ,char*,size_t) ;

const char *usb_decode_ctrl(char *str, size_t size, __u8 bRequestType,
       __u8 bRequest, __u16 wValue, __u16 wIndex,
       __u16 wLength)
{
 switch (bRequest) {
 case 136:
  usb_decode_get_status(bRequestType, wIndex, wLength, str, size);
  break;
 case 140:
 case 132:
  usb_decode_set_clear_feature(bRequestType, bRequest, wValue,
          wIndex, str, size);
  break;
 case 135:
  usb_decode_set_address(wValue, str, size);
  break;
 case 138:
 case 133:
  usb_decode_get_set_descriptor(bRequestType, bRequest, wValue,
           wIndex, wLength, str, size);
  break;
 case 139:
  usb_decode_get_configuration(wLength, str, size);
  break;
 case 134:
  usb_decode_set_configuration(wValue, str, size);
  break;
 case 137:
  usb_decode_get_intf(wIndex, wLength, str, size);
  break;
 case 131:
  usb_decode_set_intf(wValue, wIndex, str, size);
  break;
 case 128:
  usb_decode_synch_frame(wIndex, wLength, str, size);
  break;
 case 129:
  usb_decode_set_sel(wLength, str, size);
  break;
 case 130:
  usb_decode_set_isoch_delay(wValue, str, size);
  break;
 default:
  snprintf(str, size, "%02x %02x %02x %02x %02x %02x %02x %02x",
    bRequestType, bRequest,
    (u8)(cpu_to_le16(wValue) & 0xff),
    (u8)(cpu_to_le16(wValue) >> 8),
    (u8)(cpu_to_le16(wIndex) & 0xff),
    (u8)(cpu_to_le16(wIndex) >> 8),
    (u8)(cpu_to_le16(wLength) & 0xff),
    (u8)(cpu_to_le16(wLength) >> 8));
 }

 return str;
}
