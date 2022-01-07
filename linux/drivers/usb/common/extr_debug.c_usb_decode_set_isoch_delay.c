
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static void usb_decode_set_isoch_delay(__u8 wValue, char *str, size_t size)
{
 snprintf(str, size, "Set Isochronous Delay(Delay = %d ns)", wValue);
}
