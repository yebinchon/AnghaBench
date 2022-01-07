
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static void usb_decode_set_intf(__u8 wValue, __u16 wIndex, char *str,
    size_t size)
{
 snprintf(str, size, "Set Interface(Intf = %d, Alt.Setting = %d)",
   wIndex, wValue);
}
