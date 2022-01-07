
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static const char *usb_decode_test_mode(u16 wIndex)
{
 switch (wIndex) {
 case 131:
  return ": TEST_J";
 case 130:
  return ": TEST_K";
 case 128:
  return ": TEST_SE0_NAK";
 case 129:
  return ": TEST_PACKET";
 case 132:
  return ": TEST_FORCE_EN";
 default:
  return ": UNKNOWN";
 }
}
