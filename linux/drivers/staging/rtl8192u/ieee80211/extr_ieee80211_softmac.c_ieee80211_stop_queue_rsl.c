
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swtxstop; } ;
struct ieee80211_device {int queue_stop; TYPE_1__ softmac_stats; int dev; } ;


 int netif_queue_stopped (int ) ;
 int netif_stop_queue (int ) ;

void ieee80211_stop_queue(struct ieee80211_device *ieee)
{



 if (!netif_queue_stopped(ieee->dev)) {
  netif_stop_queue(ieee->dev);
  ieee->softmac_stats.swtxstop++;
 }
 ieee->queue_stop = 1;

}
