
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct wilc_vif {scalar_t__ monitor_flag; TYPE_2__* frame_reg; } ;
struct wilc {int vif_num; int vif_mutex; int monitor_dev; TYPE_1__** vif; } ;
typedef int __le16 ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ reg; } ;
struct TYPE_3__ {int ndev; } ;


 scalar_t__ le16_to_cpup (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wilc_vif* netdev_priv (int ) ;
 int wilc_wfi_monitor_rx (int ,int *,int ) ;
 int wilc_wfi_p2p_rx (struct wilc_vif*,int *,int ) ;

void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
{
 int i = 0;
 struct wilc_vif *vif;

 mutex_lock(&wilc->vif_mutex);
 for (i = 0; i < wilc->vif_num; i++) {
  u16 type = le16_to_cpup((__le16 *)buff);

  vif = netdev_priv(wilc->vif[i]->ndev);
  if ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
      (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)) {
   wilc_wfi_p2p_rx(vif, buff, size);
   break;
  }

  if (vif->monitor_flag) {
   wilc_wfi_monitor_rx(wilc->monitor_dev, buff, size);
   break;
  }
 }
 mutex_unlock(&wilc->vif_mutex);
}
