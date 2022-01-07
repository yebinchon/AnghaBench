
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee80211_hw {int dummy; } ;
struct dynamic_primary_cca {scalar_t__ mf_state; } ;
struct TYPE_2__ {struct dynamic_primary_cca primarycca; } ;


 int BIT (int) ;
 int DM_REG_L1SBD_PD_CH_11N ;
 TYPE_1__* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,scalar_t__) ;

__attribute__((used)) static void rtl92ee_dm_write_dynamic_cca(struct ieee80211_hw *hw,
      u8 cur_mf_state)
{
 struct dynamic_primary_cca *primarycca = &rtl_priv(hw)->primarycca;

 if (primarycca->mf_state != cur_mf_state)
  rtl_set_bbreg(hw, DM_REG_L1SBD_PD_CH_11N, BIT(8) | BIT(7),
         cur_mf_state);

 primarycca->mf_state = cur_mf_state;
}
