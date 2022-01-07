
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ category; } ;
struct TYPE_6__ {TYPE_2__ action; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct cw1200_txinfo {TYPE_1__* hdr; } ;
struct cw1200_common {int dummy; } ;
struct TYPE_4__ {int frame_control; } ;


 scalar_t__ WLAN_CATEGORY_BACK ;
 scalar_t__ ieee80211_is_action (int ) ;

__attribute__((used)) static int
cw1200_tx_h_action(struct cw1200_common *priv,
     struct cw1200_txinfo *t)
{
 struct ieee80211_mgmt *mgmt =
  (struct ieee80211_mgmt *)t->hdr;
 if (ieee80211_is_action(t->hdr->frame_control) &&
     mgmt->u.action.category == WLAN_CATEGORY_BACK)
  return 1;
 else
  return 0;
}
