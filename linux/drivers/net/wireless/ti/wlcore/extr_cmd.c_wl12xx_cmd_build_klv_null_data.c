
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int klv_template_id; } ;
struct wl12xx_vif {int basic_rate; TYPE_1__ sta; int role_id; } ;
struct wl1271 {int hw; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_vif {int dummy; } ;


 int CMD_TEMPL_KLV ;
 int ENOMEM ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_nullfunc_get (int ,struct ieee80211_vif*,int) ;
 int wl1271_cmd_template_set (struct wl1271*,int ,int ,int ,int ,int ,int ) ;
 int wl1271_warning (char*,int) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

int wl12xx_cmd_build_klv_null_data(struct wl1271 *wl,
       struct wl12xx_vif *wlvif)
{
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 struct sk_buff *skb = ((void*)0);
 int ret = -ENOMEM;

 skb = ieee80211_nullfunc_get(wl->hw, vif, 0);
 if (!skb)
  goto out;

 ret = wl1271_cmd_template_set(wl, wlvif->role_id, CMD_TEMPL_KLV,
          skb->data, skb->len,
          wlvif->sta.klv_template_id,
          wlvif->basic_rate);

out:
 dev_kfree_skb(skb);
 if (ret)
  wl1271_warning("cmd build klv null data failed %d", ret);

 return ret;

}
