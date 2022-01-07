
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlandevice {int spy_number; TYPE_1__* spy_stat; int * spy_address; } ;
struct p80211_rxmeta {scalar_t__ signal; scalar_t__ noise; } ;
struct TYPE_2__ {scalar_t__ level; scalar_t__ noise; scalar_t__ qual; int updated; } ;


 int ETH_ALEN ;
 int memcmp (int ,char*,int ) ;

__attribute__((used)) static void orinoco_spy_gather(struct wlandevice *wlandev, char *mac,
          struct p80211_rxmeta *rxmeta)
{
 int i;





 for (i = 0; i < wlandev->spy_number; i++) {
  if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
   wlandev->spy_stat[i].level = rxmeta->signal;
   wlandev->spy_stat[i].noise = rxmeta->noise;
   wlandev->spy_stat[i].qual =
       (rxmeta->signal >
        rxmeta->noise) ? (rxmeta->signal -
            rxmeta->noise) : 0;
   wlandev->spy_stat[i].updated = 0x7;
  }
 }
}
