
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc {int vif_num; int wiphy; int bus_data; int hif_workqueue; TYPE_1__** vif; int * firmware; } ;
struct TYPE_2__ {scalar_t__ ndev; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int kfree (int ) ;
 int release_firmware (int *) ;
 int unregister_netdev (scalar_t__) ;
 int wilc_wfi_deinit_mon_interface (struct wilc*,int) ;
 int wilc_wlan_cfg_deinit (struct wilc*) ;
 int wiphy_free (int ) ;
 int wiphy_unregister (int ) ;

void wilc_netdev_cleanup(struct wilc *wilc)
{
 int i;

 if (!wilc)
  return;

 if (wilc->firmware) {
  release_firmware(wilc->firmware);
  wilc->firmware = ((void*)0);
 }

 for (i = 0; i < wilc->vif_num; i++) {
  if (wilc->vif[i] && wilc->vif[i]->ndev)
   unregister_netdev(wilc->vif[i]->ndev);
 }

 wilc_wfi_deinit_mon_interface(wilc, 0);
 flush_workqueue(wilc->hif_workqueue);
 destroy_workqueue(wilc->hif_workqueue);
 wilc_wlan_cfg_deinit(wilc);
 kfree(wilc->bus_data);
 wiphy_unregister(wilc->wiphy);
 wiphy_free(wilc->wiphy);
}
