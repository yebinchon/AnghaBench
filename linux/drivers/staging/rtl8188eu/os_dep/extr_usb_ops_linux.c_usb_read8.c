
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int usbctrl_vendorreq (struct adapter*,int,int,int,int*,int,int) ;

u8 usb_read8(struct adapter *adapter, u32 addr)
{
 u8 request;
 u8 requesttype;
 u16 wvalue;
 u16 index;
 u16 len;
 u8 data = 0;

 request = 0x05;
 requesttype = 0x01;
 index = 0;

 wvalue = (u16)(addr & 0x0000ffff);
 len = 1;

 usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);

 return data;
}
