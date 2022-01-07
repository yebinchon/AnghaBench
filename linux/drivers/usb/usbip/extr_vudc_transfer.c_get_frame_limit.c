
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;







__attribute__((used)) static int get_frame_limit(enum usb_device_speed speed)
{
 switch (speed) {
 case 129:
  return 8 * 12 ;
 case 131:
  return 64 * 19 ;
 case 130:
  return 512 * 13 * 8 ;
 case 128:

  return 490000;
 default:

  return -1;
 }

}
