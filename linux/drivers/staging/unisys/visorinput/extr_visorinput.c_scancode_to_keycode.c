
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* visorkbd_ext_keycode ;
 int* visorkbd_keycode ;

__attribute__((used)) static int scancode_to_keycode(int scancode)
{
 if (scancode > 0xff)
  return visorkbd_ext_keycode[(scancode >> 8) & 0xff];

 return visorkbd_keycode[scancode];
}
