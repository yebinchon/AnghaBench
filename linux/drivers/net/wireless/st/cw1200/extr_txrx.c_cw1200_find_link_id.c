
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cw1200_common {int ps_state_lock; TYPE_1__* link_id_db; } ;
struct TYPE_2__ {int timestamp; scalar_t__ status; int mac; } ;


 int CW1200_MAX_STA_IN_AP_MODE ;
 int ETH_ALEN ;
 int jiffies ;
 int memcmp (int const*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cw1200_find_link_id(struct cw1200_common *priv, const u8 *mac)
{
 int i, ret = 0;
 spin_lock_bh(&priv->ps_state_lock);
 for (i = 0; i < CW1200_MAX_STA_IN_AP_MODE; ++i) {
  if (!memcmp(mac, priv->link_id_db[i].mac, ETH_ALEN) &&
      priv->link_id_db[i].status) {
   priv->link_id_db[i].timestamp = jiffies;
   ret = i + 1;
   break;
  }
 }
 spin_unlock_bh(&priv->ps_state_lock);
 return ret;
}
