
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_null_data_template {int dummy; } ;
struct wl1251 {scalar_t__ bss_type; int vif; int hw; } ;
struct sk_buff {int len; void* data; } ;


 scalar_t__ BSS_TYPE_IBSS ;
 int CMD_NULL_DATA ;
 int ENOMEM ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_nullfunc_get (int ,int ,int) ;
 int wl1251_cmd_template_set (struct wl1251*,int ,void*,int) ;
 int wl1251_warning (char*,int) ;

__attribute__((used)) static int wl1251_build_null_data(struct wl1251 *wl)
{
 struct sk_buff *skb = ((void*)0);
 int size;
 void *ptr;
 int ret = -ENOMEM;

 if (wl->bss_type == BSS_TYPE_IBSS) {
  size = sizeof(struct wl12xx_null_data_template);
  ptr = ((void*)0);
 } else {
  skb = ieee80211_nullfunc_get(wl->hw, wl->vif, 0);
  if (!skb)
   goto out;
  size = skb->len;
  ptr = skb->data;
 }

 ret = wl1251_cmd_template_set(wl, CMD_NULL_DATA, ptr, size);

out:
 dev_kfree_skb(skb);
 if (ret)
  wl1251_warning("cmd buld null data failed: %d", ret);

 return ret;
}
