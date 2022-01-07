
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rt2x00_dev {unsigned int packet_filter; TYPE_2__* ops; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* config_filter ) (struct rt2x00_dev*,unsigned int) ;} ;


 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PLCPFAIL ;
 unsigned int FIF_PSPOLL ;
 int rt2x00_has_cap_control_filter_pspoll (struct rt2x00_dev*) ;
 int rt2x00_has_cap_control_filters (struct rt2x00_dev*) ;
 int stub1 (struct rt2x00_dev*,unsigned int) ;

void rt2x00mac_configure_filter(struct ieee80211_hw *hw,
    unsigned int changed_flags,
    unsigned int *total_flags,
    u64 multicast)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;





 *total_flags &=
     FIF_ALLMULTI |
     FIF_FCSFAIL |
     FIF_PLCPFAIL |
     FIF_CONTROL |
     FIF_PSPOLL |
     FIF_OTHER_BSS;







 *total_flags |= FIF_ALLMULTI;
 if (!rt2x00_has_cap_control_filters(rt2x00dev)) {
  if (*total_flags & FIF_CONTROL || *total_flags & FIF_PSPOLL)
   *total_flags |= FIF_CONTROL | FIF_PSPOLL;
 }
 if (!rt2x00_has_cap_control_filter_pspoll(rt2x00dev)) {
  if (*total_flags & FIF_CONTROL)
   *total_flags |= FIF_PSPOLL;
 }

 rt2x00dev->packet_filter = *total_flags;

 rt2x00dev->ops->lib->config_filter(rt2x00dev, *total_flags);
}
