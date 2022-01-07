
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* rx_mask; } ;
struct ieee80211_ht_cap {TYPE_1__ mcs; } ;



unsigned int update_MSC_rate(struct ieee80211_ht_cap *pHT_caps)
{
 return (pHT_caps->mcs.rx_mask[0] << 12) |
        (pHT_caps->mcs.rx_mask[1] << 20);
}
