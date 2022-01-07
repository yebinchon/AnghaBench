
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ips_nic_off_wq; int rtl_wq; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;


 int MSECS (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_ips_nic_off(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);





 queue_delayed_work(rtlpriv->works.rtl_wq,
      &rtlpriv->works.ips_nic_off_wq, MSECS(100));
}
