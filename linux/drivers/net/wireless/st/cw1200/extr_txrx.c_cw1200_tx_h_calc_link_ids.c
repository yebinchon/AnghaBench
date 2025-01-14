
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int raw_link_id; int link_id; } ;
struct cw1200_txinfo {TYPE_5__ txpriv; int queue; TYPE_4__* sta; int da; TYPE_1__* sta_priv; } ;
struct cw1200_common {scalar_t__ mode; TYPE_3__* link_id_db; TYPE_2__* hw; scalar_t__ enable_beacon; } ;
struct TYPE_9__ {int uapsd_queues; } ;
struct TYPE_8__ {int timestamp; } ;
struct TYPE_7__ {int wiphy; } ;
struct TYPE_6__ {int link_id; } ;


 int BIT (int ) ;
 int CW1200_LINK_ID_AFTER_DTIM ;
 int CW1200_LINK_ID_UAPSD ;
 int ENOENT ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int cw1200_alloc_link_id (struct cw1200_common*,int ) ;
 int cw1200_find_link_id (struct cw1200_common*,int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int jiffies ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int
cw1200_tx_h_calc_link_ids(struct cw1200_common *priv,
     struct cw1200_txinfo *t)
{
 if (t->sta && t->sta_priv->link_id)
  t->txpriv.raw_link_id =
    t->txpriv.link_id =
    t->sta_priv->link_id;
 else if (priv->mode != NL80211_IFTYPE_AP)
  t->txpriv.raw_link_id =
    t->txpriv.link_id = 0;
 else if (is_multicast_ether_addr(t->da)) {
  if (priv->enable_beacon) {
   t->txpriv.raw_link_id = 0;
   t->txpriv.link_id = CW1200_LINK_ID_AFTER_DTIM;
  } else {
   t->txpriv.raw_link_id = 0;
   t->txpriv.link_id = 0;
  }
 } else {
  t->txpriv.link_id = cw1200_find_link_id(priv, t->da);
  if (!t->txpriv.link_id)
   t->txpriv.link_id = cw1200_alloc_link_id(priv, t->da);
  if (!t->txpriv.link_id) {
   wiphy_err(priv->hw->wiphy,
      "No more link IDs available.\n");
   return -ENOENT;
  }
  t->txpriv.raw_link_id = t->txpriv.link_id;
 }
 if (t->txpriv.raw_link_id)
  priv->link_id_db[t->txpriv.raw_link_id - 1].timestamp =
    jiffies;
 if (t->sta && (t->sta->uapsd_queues & BIT(t->queue)))
  t->txpriv.link_id = CW1200_LINK_ID_UAPSD;
 return 0;
}
