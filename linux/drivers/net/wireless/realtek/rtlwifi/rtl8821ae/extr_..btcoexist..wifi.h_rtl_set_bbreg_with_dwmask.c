
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int ) ;

__attribute__((used)) static inline void rtl_set_bbreg_with_dwmask(struct ieee80211_hw *hw,
          u32 regaddr, u32 data)
{
 rtl_set_bbreg(hw, regaddr, 0xffffffff, data);
}
