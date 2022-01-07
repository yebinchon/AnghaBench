
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_5__ {scalar_t__* bssid; } ;
struct TYPE_4__ {scalar_t__ bPromiscuousOn; scalar_t__ bFilterSourceStationFrame; } ;
struct rtllib_device {scalar_t__ iw_mode; TYPE_2__ current_network; TYPE_3__* dev; TYPE_1__ IntelPromiscuousModeInfo; } ;
struct TYPE_6__ {scalar_t__* dev_addr; } ;


 int ETH_ALEN ;
 scalar_t__ IW_MODE_MESH ;
 int RTLLIB_FCTL_DSTODS ;
 int RTLLIB_FCTL_FROMDS ;
 int RTLLIB_FCTL_TODS ;
 scalar_t__ RTLLIB_STYPE_DATA ;
 scalar_t__ RTLLIB_STYPE_DATA_CFACK ;
 scalar_t__ RTLLIB_STYPE_DATA_CFACKPOLL ;
 scalar_t__ RTLLIB_STYPE_DATA_CFPOLL ;
 scalar_t__ RTLLIB_STYPE_NULLFUNC ;
 scalar_t__ RTLLIB_STYPE_QOS_DATA ;
 scalar_t__ WLAN_FC_GET_STYPE (int) ;
 scalar_t__ WLAN_FC_GET_TYPE (int) ;
 scalar_t__ ether_addr_equal (scalar_t__*,scalar_t__*) ;
 scalar_t__ is_multicast_ether_addr (scalar_t__*) ;
 int is_zero_ether_addr (scalar_t__*) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int ) ;
 int netdev_dbg (TYPE_3__*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int rtllib_rx_data_filter(struct rtllib_device *ieee, u16 fc,
     u8 *dst, u8 *src, u8 *bssid, u8 *addr2)
{
 u8 type, stype;

 type = WLAN_FC_GET_TYPE(fc);
 stype = WLAN_FC_GET_STYPE(fc);


 if (((fc & RTLLIB_FCTL_DSTODS) != RTLLIB_FCTL_DSTODS) &&
     !ether_addr_equal(ieee->current_network.bssid, bssid) &&
     !is_zero_ether_addr(ieee->current_network.bssid)) {
  return -1;
 }


 if (ieee->IntelPromiscuousModeInfo.bPromiscuousOn &&
  ieee->IntelPromiscuousModeInfo.bFilterSourceStationFrame) {
  if ((fc & RTLLIB_FCTL_TODS) && !(fc & RTLLIB_FCTL_FROMDS) &&
      !ether_addr_equal(dst, ieee->current_network.bssid) &&
      ether_addr_equal(bssid, ieee->current_network.bssid)) {
   return -1;
  }
 }




 if (!ieee->IntelPromiscuousModeInfo.bPromiscuousOn) {
  if (stype != RTLLIB_STYPE_DATA &&
      stype != RTLLIB_STYPE_DATA_CFACK &&
      stype != RTLLIB_STYPE_DATA_CFPOLL &&
      stype != RTLLIB_STYPE_DATA_CFACKPOLL &&
      stype != RTLLIB_STYPE_QOS_DATA) {
   if (stype != RTLLIB_STYPE_NULLFUNC)
    netdev_dbg(ieee->dev,
        "RX: dropped data frame with no data (type=0x%02x, subtype=0x%02x)\n",
        type, stype);
   return -1;
  }
 }

 if (ieee->iw_mode != IW_MODE_MESH) {

  if (!memcmp(src, ieee->dev->dev_addr, ETH_ALEN))
   return -1;


  if (is_multicast_ether_addr(dst)) {
   if (memcmp(bssid, ieee->current_network.bssid,
       ETH_ALEN))
    return -1;
  }
 }
 return 0;
}
