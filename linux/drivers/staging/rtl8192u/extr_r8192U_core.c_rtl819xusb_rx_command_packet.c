
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int dummy; } ;


 int DMESG (char*) ;
 scalar_t__ cmpk_message_handle_rx (struct net_device*,struct ieee80211_rx_stats*) ;

__attribute__((used)) static u32 rtl819xusb_rx_command_packet(struct net_device *dev,
     struct ieee80211_rx_stats *pstats)
{
 u32 status;

 status = cmpk_message_handle_rx(dev, pstats);
 if (status)
  DMESG("rxcommandpackethandle819xusb: It is a command packet\n");

 return status;
}
