
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cap; } ;
struct cw1200_ht_info {int operation_mode; TYPE_1__ ht_cap; } ;


 int IEEE80211_HT_CAP_GRN_FLD ;
 int IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT ;
 scalar_t__ cw1200_is_ht (struct cw1200_ht_info const*) ;

__attribute__((used)) static inline int cw1200_ht_greenfield(const struct cw1200_ht_info *ht_info)
{
 return cw1200_is_ht(ht_info) &&
  (ht_info->ht_cap.cap & IEEE80211_HT_CAP_GRN_FLD) &&
  !(ht_info->operation_mode &
    IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT);
}
