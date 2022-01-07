
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zd_mc_hash {int low; int high; } ;
struct zd_mac {int pass_failed_fcs; int pass_ctrl; int chip; int lock; struct zd_mc_hash multicast_hash; } ;
struct ieee80211_hw {int dummy; } ;


 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int SUPPORTED_FIF_FLAGS ;
 int dev_err (int ,char*,int) ;
 int set_rx_filter (struct zd_mac*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zd_chip_set_multicast_hash (int *,struct zd_mc_hash*) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_mac_dev (struct zd_mac*) ;
 int zd_mc_add_all (struct zd_mc_hash*) ;

__attribute__((used)) static void zd_op_configure_filter(struct ieee80211_hw *hw,
   unsigned int changed_flags,
   unsigned int *new_flags,
   u64 multicast)
{
 struct zd_mc_hash hash = {
  .low = multicast,
  .high = multicast >> 32,
 };
 struct zd_mac *mac = zd_hw_mac(hw);
 unsigned long flags;
 int r;


 changed_flags &= SUPPORTED_FIF_FLAGS;
 *new_flags &= SUPPORTED_FIF_FLAGS;
 if (*new_flags & FIF_ALLMULTI)
  zd_mc_add_all(&hash);

 spin_lock_irqsave(&mac->lock, flags);
 mac->pass_failed_fcs = !!(*new_flags & FIF_FCSFAIL);
 mac->pass_ctrl = !!(*new_flags & FIF_CONTROL);
 mac->multicast_hash = hash;
 spin_unlock_irqrestore(&mac->lock, flags);

 zd_chip_set_multicast_hash(&mac->chip, &hash);

 if (changed_flags & FIF_CONTROL) {
  r = set_rx_filter(mac);
  if (r)
   dev_err(zd_mac_dev(mac), "set_rx_filter error %d\n", r);
 }
}
