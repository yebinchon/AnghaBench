
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static const char *usb_decode_device_feature(u16 wValue)
{
 switch (wValue) {
 case 131:
  return "Self Powered";
 case 132:
  return "Remote Wakeup";
 case 130:
  return "Test Mode";
 case 129:
  return "U1 Enable";
 case 128:
  return "U2 Enable";
 case 133:
  return "LTM Enable";
 default:
  return "UNKNOWN";
 }
}
