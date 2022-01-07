
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wilc {int vif_num; int vif_mutex; TYPE_1__** vif; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; struct net_device* ndev; int bssid; } ;


 scalar_t__ WILC_AP_MODE ;
 scalar_t__ WILC_STATION_MODE ;
 scalar_t__ ether_addr_equal_unaligned (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct net_device *get_if_handler(struct wilc *wilc, u8 *mac_header)
{
 u8 *bssid, *bssid1;
 int i = 0;
 struct net_device *ndev = ((void*)0);

 bssid = mac_header + 10;
 bssid1 = mac_header + 4;

 mutex_lock(&wilc->vif_mutex);
 for (i = 0; i < wilc->vif_num; i++) {
  if (wilc->vif[i]->mode == WILC_STATION_MODE)
   if (ether_addr_equal_unaligned(bssid,
             wilc->vif[i]->bssid)) {
    ndev = wilc->vif[i]->ndev;
    goto out;
   }
  if (wilc->vif[i]->mode == WILC_AP_MODE)
   if (ether_addr_equal_unaligned(bssid1,
             wilc->vif[i]->bssid)) {
    ndev = wilc->vif[i]->ndev;
    goto out;
   }
 }
out:
 mutex_unlock(&wilc->vif_mutex);
 return ndev;
}
