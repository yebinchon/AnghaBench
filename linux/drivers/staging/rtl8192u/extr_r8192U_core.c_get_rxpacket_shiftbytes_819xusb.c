
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rx_desc_819x_usb {int dummy; } ;
struct ieee80211_rx_stats {scalar_t__ RxBufShift; scalar_t__ RxDrvInfoSize; } ;



__attribute__((used)) static u32 get_rxpacket_shiftbytes_819xusb(struct ieee80211_rx_stats *pstats)
{
 return (sizeof(struct rx_desc_819x_usb) + pstats->RxDrvInfoSize
  + pstats->RxBufShift);
}
