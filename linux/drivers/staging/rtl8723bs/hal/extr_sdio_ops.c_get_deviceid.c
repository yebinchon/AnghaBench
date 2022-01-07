
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int SDIO_LOCAL_DEVICE_ID ;
 int WLAN_IOREG_DEVICE_ID ;
 int WLAN_RX0FF_DEVICE_ID ;
 int WLAN_TX_HIQ_DEVICE_ID ;
 int WLAN_TX_LOQ_DEVICE_ID ;
 int WLAN_TX_MIQ_DEVICE_ID ;

__attribute__((used)) static u8 get_deviceid(u32 addr)
{
 u8 devide_id;
 u16 pseudo_id;


 pseudo_id = (u16)(addr >> 16);
 switch (pseudo_id) {
 case 0x1025:
  devide_id = SDIO_LOCAL_DEVICE_ID;
  break;

 case 0x1026:
  devide_id = WLAN_IOREG_DEVICE_ID;
  break;





 case 0x1031:
  devide_id = WLAN_TX_HIQ_DEVICE_ID;
  break;

 case 0x1032:
  devide_id = WLAN_TX_MIQ_DEVICE_ID;
  break;

 case 0x1033:
  devide_id = WLAN_TX_LOQ_DEVICE_ID;
  break;

 case 0x1034:
  devide_id = WLAN_RX0FF_DEVICE_ID;
  break;

 default:

  devide_id = WLAN_IOREG_DEVICE_ID;
  break;
 }

 return devide_id;
}
