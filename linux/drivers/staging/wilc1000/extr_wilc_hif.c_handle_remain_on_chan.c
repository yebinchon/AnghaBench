
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wilc_vif {scalar_t__ connecting; struct host_if_drv* hif_drv; } ;
struct wilc_remain_ch {int cookie; scalar_t__ ch; int expired; int arg; } ;
struct wid {int size; int* val; int type; int id; } ;
struct TYPE_4__ {int cookie; scalar_t__ ch; int expired; int arg; } ;
struct TYPE_3__ {scalar_t__ scan_result; } ;
struct host_if_drv {scalar_t__ hif_state; struct wilc_vif* remain_on_ch_timer_vif; TYPE_2__ remain_on_ch; TYPE_1__ usr_scan_req; } ;
typedef int s8 ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HOST_IF_WAITING_CONN_RESP ;
 int WID_REMAIN_ON_CHAN ;
 int WID_STR ;
 int WILC_SET_CFG ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

__attribute__((used)) static int handle_remain_on_chan(struct wilc_vif *vif,
     struct wilc_remain_ch *hif_remain_ch)
{
 int result;
 u8 remain_on_chan_flag;
 struct wid wid;
 struct host_if_drv *hif_drv = vif->hif_drv;

 if (hif_drv->usr_scan_req.scan_result)
  return -EBUSY;

 if (hif_drv->hif_state == HOST_IF_WAITING_CONN_RESP)
  return -EBUSY;

 if (vif->connecting)
  return -EBUSY;

 remain_on_chan_flag = 1;
 wid.id = WID_REMAIN_ON_CHAN;
 wid.type = WID_STR;
 wid.size = 2;
 wid.val = kmalloc(wid.size, GFP_KERNEL);
 if (!wid.val)
  return -ENOMEM;

 wid.val[0] = remain_on_chan_flag;
 wid.val[1] = (s8)hif_remain_ch->ch;

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 kfree(wid.val);
 if (result)
  return -EBUSY;

 hif_drv->remain_on_ch.arg = hif_remain_ch->arg;
 hif_drv->remain_on_ch.expired = hif_remain_ch->expired;
 hif_drv->remain_on_ch.ch = hif_remain_ch->ch;
 hif_drv->remain_on_ch.cookie = hif_remain_ch->cookie;
 hif_drv->remain_on_ch_timer_vif = vif;

 return 0;
}
