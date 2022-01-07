
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* powerindex_backup; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int * power_index_reg ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;

void dm_savepowerindex(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 index;
 u8 tmp;

 for (index = 0; index < 6; index++) {
  tmp = rtl_read_byte(rtlpriv, power_index_reg[index]);
  rtlpriv->dm.powerindex_backup[index] = tmp;
 }
}
