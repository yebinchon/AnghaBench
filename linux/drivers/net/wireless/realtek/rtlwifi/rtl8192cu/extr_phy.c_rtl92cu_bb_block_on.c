
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bb_mutex; } ;
struct rtl_priv {TYPE_1__ io; } ;
struct ieee80211_hw {int dummy; } ;


 int BCCKEN ;
 int BOFDMEN ;
 int RFPGA0_RFMOD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;

void rtl92cu_bb_block_on(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 mutex_lock(&rtlpriv->io.bb_mutex);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);
 mutex_unlock(&rtlpriv->io.bb_mutex);
}
