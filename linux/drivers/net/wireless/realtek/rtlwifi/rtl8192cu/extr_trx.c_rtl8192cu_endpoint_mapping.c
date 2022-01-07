
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int IS_NORMAL_CHIP (int ) ;
 int _out_ep_mapping (struct ieee80211_hw*) ;
 int configvernoutep (struct ieee80211_hw*) ;
 int configvertoutep (struct ieee80211_hw*) ;
 scalar_t__ likely (int ) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

int rtl8192cu_endpoint_mapping(struct ieee80211_hw *hw)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 int error = 0;

 if (likely(IS_NORMAL_CHIP(rtlhal->version)))
  error = configvernoutep(hw);
 else
  error = configvertoutep(hw);
 if (error)
  goto err_out;
 error = _out_ep_mapping(hw);
 if (error)
  goto err_out;
err_out:
 return error;
}
