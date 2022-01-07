
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int bssid; int fcs; scalar_t__ promiscuous; } ;
struct cw1200_common {int disable_beacon_filter; int listening; TYPE_2__ scan; int conf_mutex; TYPE_1__ rx_filter; } ;


 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PROBE_REQ ;
 int cw1200_update_filtering (struct cw1200_common*) ;
 int cw1200_update_listening (struct cw1200_common*,int) ;
 int down (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up (int *) ;
 int wsm_lock_tx (struct cw1200_common*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

void cw1200_configure_filter(struct ieee80211_hw *dev,
        unsigned int changed_flags,
        unsigned int *total_flags,
        u64 multicast)
{
 struct cw1200_common *priv = dev->priv;
 bool listening = !!(*total_flags &
       (FIF_OTHER_BSS |
        FIF_BCN_PRBRESP_PROMISC |
        FIF_PROBE_REQ));

 *total_flags &= FIF_OTHER_BSS |
   FIF_FCSFAIL |
   FIF_BCN_PRBRESP_PROMISC |
   FIF_PROBE_REQ;

 down(&priv->scan.lock);
 mutex_lock(&priv->conf_mutex);

 priv->rx_filter.promiscuous = 0;
 priv->rx_filter.bssid = (*total_flags & (FIF_OTHER_BSS |
   FIF_PROBE_REQ)) ? 1 : 0;
 priv->rx_filter.fcs = (*total_flags & FIF_FCSFAIL) ? 1 : 0;
 priv->disable_beacon_filter = !(*total_flags &
     (FIF_BCN_PRBRESP_PROMISC |
      FIF_PROBE_REQ));
 if (priv->listening != listening) {
  priv->listening = listening;
  wsm_lock_tx(priv);
  cw1200_update_listening(priv, listening);
  wsm_unlock_tx(priv);
 }
 cw1200_update_filtering(priv);
 mutex_unlock(&priv->conf_mutex);
 up(&priv->scan.lock);
}
