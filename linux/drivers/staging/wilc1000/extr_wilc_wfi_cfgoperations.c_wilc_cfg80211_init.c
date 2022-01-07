
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wilc_vif {int dummy; } ;
struct wilc_hif_func {int dummy; } ;
struct TYPE_4__ {int list; } ;
struct TYPE_3__ {int list; } ;
struct wilc {int io_type; int wiphy; int hif_workqueue; TYPE_2__ rxq_head; TYPE_1__ txq_head; int chip_ps_state; struct wilc_hif_func const* hif_func; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct wilc_vif*) ;
 int NL80211_IFTYPE_STATION ;
 int PTR_ERR (struct wilc_vif*) ;
 int WILC_CHIP_WAKEDUP ;
 int WILC_STATION_MODE ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 struct wilc* wilc_create_wiphy (struct device*) ;
 struct wilc_vif* wilc_netdev_ifc_init (struct wilc*,char*,int ,int ,int) ;
 int wilc_wlan_cfg_deinit (struct wilc*) ;
 int wilc_wlan_cfg_init (struct wilc*) ;
 int wiphy_free (int ) ;
 int wiphy_unregister (int ) ;
 int wlan_init_locks (struct wilc*) ;

int wilc_cfg80211_init(struct wilc **wilc, struct device *dev, int io_type,
         const struct wilc_hif_func *ops)
{
 struct wilc *wl;
 struct wilc_vif *vif;
 int ret;

 wl = wilc_create_wiphy(dev);
 if (!wl)
  return -EINVAL;

 ret = wilc_wlan_cfg_init(wl);
 if (ret)
  goto free_wl;

 *wilc = wl;
 wl->io_type = io_type;
 wl->hif_func = ops;
 wl->chip_ps_state = WILC_CHIP_WAKEDUP;
 INIT_LIST_HEAD(&wl->txq_head.list);
 INIT_LIST_HEAD(&wl->rxq_head.list);

 wl->hif_workqueue = create_singlethread_workqueue("WILC_wq");
 if (!wl->hif_workqueue) {
  ret = -ENOMEM;
  goto free_cfg;
 }
 vif = wilc_netdev_ifc_init(wl, "wlan%d", WILC_STATION_MODE,
       NL80211_IFTYPE_STATION, 0);
 if (IS_ERR(vif)) {
  ret = PTR_ERR(vif);
  goto free_hq;
 }

 wlan_init_locks(wl);

 return 0;

free_hq:
 destroy_workqueue(wl->hif_workqueue);

free_cfg:
 wilc_wlan_cfg_deinit(wl);

free_wl:
 wiphy_unregister(wl->wiphy);
 wiphy_free(wl->wiphy);
 return ret;
}
