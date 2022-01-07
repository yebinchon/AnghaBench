
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* set_tx_desc_data_len ) (struct wl1271*,struct wl1271_tx_hw_descr*,struct sk_buff*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct wl1271*,struct wl1271_tx_hw_descr*,struct sk_buff*) ;

__attribute__((used)) static inline void
wlcore_hw_set_tx_desc_data_len(struct wl1271 *wl,
          struct wl1271_tx_hw_descr *desc,
          struct sk_buff *skb)
{
 if (!wl->ops->set_tx_desc_data_len)
  BUG_ON(1);

 wl->ops->set_tx_desc_data_len(wl, desc, skb);
}
