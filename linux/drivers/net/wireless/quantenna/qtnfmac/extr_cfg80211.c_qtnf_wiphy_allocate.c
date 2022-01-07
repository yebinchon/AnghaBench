
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct qtnf_wmac {int dummy; } ;
struct TYPE_4__ {int hw_capab; } ;
struct qtnf_bus {int dev; TYPE_1__ hw_info; } ;
struct TYPE_5__ {int * set_power_mgmt; int * start_radar_detection; } ;


 int QLINK_HW_CAPAB_DFS_OFFLOAD ;
 int QLINK_HW_CAPAB_PWR_MGMT ;
 TYPE_2__ qtn_cfg80211_ops ;
 int set_wiphy_dev (struct wiphy*,int ) ;
 struct wiphy* wiphy_new (TYPE_2__*,int) ;

struct wiphy *qtnf_wiphy_allocate(struct qtnf_bus *bus)
{
 struct wiphy *wiphy;

 if (bus->hw_info.hw_capab & QLINK_HW_CAPAB_DFS_OFFLOAD)
  qtn_cfg80211_ops.start_radar_detection = ((void*)0);

 if (!(bus->hw_info.hw_capab & QLINK_HW_CAPAB_PWR_MGMT))
  qtn_cfg80211_ops.set_power_mgmt = ((void*)0);

 wiphy = wiphy_new(&qtn_cfg80211_ops, sizeof(struct qtnf_wmac));
 if (!wiphy)
  return ((void*)0);

 set_wiphy_dev(wiphy, bus->dev);

 return wiphy;
}
