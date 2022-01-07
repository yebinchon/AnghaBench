
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static void usb_decode_synch_frame(__u16 wIndex, __u16 wLength,
       char *str, size_t size)
{
 snprintf(str, size, "Synch Frame(Endpoint = %d, Length = %d)",
   wIndex, wLength);
}
