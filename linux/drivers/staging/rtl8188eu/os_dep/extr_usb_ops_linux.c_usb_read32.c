
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;
 int usbctrl_vendorreq (struct adapter*,int,int,int,int *,int,int) ;

u32 usb_read32(struct adapter *adapter, u32 addr)
{
 u8 request;
 u8 requesttype;
 u16 wvalue;
 u16 index;
 u16 len;
 __le32 data;

 request = 0x05;
 requesttype = 0x01;
 index = 0;

 wvalue = (u16)(addr & 0x0000ffff);
 len = 4;

 usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);

 return le32_to_cpu(data);
}
