
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



 int const SDIO_LOCAL_MSK ;
 int const WLAN_FIFO_MSK ;

 int const WLAN_IOREG_MSK ;

 int const WLAN_RX0FF_MSK ;



 int get_deviceid (int const) ;

__attribute__((used)) static u32 _cvrt2ftaddr(const u32 addr, u8 *pdevice_id, u16 *poffset)
{
 u8 device_id;
 u16 offset;
 u32 ftaddr;


 device_id = get_deviceid(addr);
 offset = 0;

 switch (device_id) {
 case 133:
  offset = addr & SDIO_LOCAL_MSK;
  break;

 case 130:
 case 128:
 case 129:
  offset = addr & WLAN_FIFO_MSK;
  break;

 case 131:
  offset = addr & WLAN_RX0FF_MSK;
  break;

 case 132:
 default:
  device_id = 132;
  offset = addr & WLAN_IOREG_MSK;
  break;
 }
 ftaddr = (device_id << 13) | offset;

 if (pdevice_id)
  *pdevice_id = device_id;
 if (poffset)
  *poffset = offset;

 return ftaddr;
}
