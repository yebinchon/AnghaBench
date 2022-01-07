
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct wilc_vif {TYPE_2__* ndev; struct host_if_drv* hif_drv; } ;
struct wilc_priv {scalar_t__ p2p_listen_state; } ;
struct wid {int size; int* val; int type; int id; } ;
struct TYPE_4__ {int arg; int (* expired ) (int ,int ) ;} ;
struct host_if_drv {TYPE_1__ remain_on_ch; } ;
struct TYPE_5__ {int ieee80211_ptr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WID_REMAIN_ON_CHAN ;
 int WID_STR ;
 int WILC_FALSE_FRMWR_CHANNEL ;
 int WILC_SET_CFG ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int netdev_dbg (TYPE_2__*,char*) ;
 int netdev_err (TYPE_2__*,char*) ;
 int stub1 (int ,int ) ;
 struct wilc_priv* wdev_priv (int ) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

__attribute__((used)) static int wilc_handle_roc_expired(struct wilc_vif *vif, u64 cookie)
{
 u8 remain_on_chan_flag;
 struct wid wid;
 int result;
 struct host_if_drv *hif_drv = vif->hif_drv;
 struct wilc_priv *priv = wdev_priv(vif->ndev->ieee80211_ptr);

 if (priv->p2p_listen_state) {
  remain_on_chan_flag = 0;
  wid.id = WID_REMAIN_ON_CHAN;
  wid.type = WID_STR;
  wid.size = 2;

  wid.val = kmalloc(wid.size, GFP_KERNEL);
  if (!wid.val)
   return -ENOMEM;

  wid.val[0] = remain_on_chan_flag;
  wid.val[1] = WILC_FALSE_FRMWR_CHANNEL;

  result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
  kfree(wid.val);
  if (result != 0) {
   netdev_err(vif->ndev, "Failed to set remain channel\n");
   return -EINVAL;
  }

  if (hif_drv->remain_on_ch.expired) {
   hif_drv->remain_on_ch.expired(hif_drv->remain_on_ch.arg,
            cookie);
  }
 } else {
  netdev_dbg(vif->ndev, "Not in listen state\n");
 }

 return 0;
}
