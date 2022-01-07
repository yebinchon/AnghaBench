
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int tid; } ;
struct cw1200_txinfo {TYPE_1__ txpriv; TYPE_2__* hdr; } ;
struct cw1200_common {int dummy; } ;
struct TYPE_4__ {int frame_control; } ;


 int IEEE80211_QOS_CTL_TID_MASK ;
 int* ieee80211_get_qos_ctl (TYPE_2__*) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;

__attribute__((used)) static void
cw1200_tx_h_calc_tid(struct cw1200_common *priv,
       struct cw1200_txinfo *t)
{
 if (ieee80211_is_data_qos(t->hdr->frame_control)) {
  u8 *qos = ieee80211_get_qos_ctl(t->hdr);
  t->txpriv.tid = qos[0] & IEEE80211_QOS_CTL_TID_MASK;
 } else if (ieee80211_is_data(t->hdr->frame_control)) {
  t->txpriv.tid = 0;
 }
}
