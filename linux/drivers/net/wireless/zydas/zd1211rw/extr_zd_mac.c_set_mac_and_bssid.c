
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd_mac {scalar_t__ type; TYPE_1__* vif; int chip; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 int set_rx_filter (struct zd_mac*) ;
 int zd_write_bssid (int *,int ) ;
 int zd_write_mac_addr (int *,int ) ;

__attribute__((used)) static int set_mac_and_bssid(struct zd_mac *mac)
{
 int r;

 if (!mac->vif)
  return -1;

 r = zd_write_mac_addr(&mac->chip, mac->vif->addr);
 if (r)
  return r;




 if (mac->type != NL80211_IFTYPE_AP)
  return set_rx_filter(mac);
 else
  return zd_write_bssid(&mac->chip, mac->vif->addr);
}
