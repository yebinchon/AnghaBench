
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl818x_rf_ops {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl818x_rf_ops const rtl8225se_ops ;

const struct rtl818x_rf_ops *rtl8187se_detect_rf(struct ieee80211_hw *dev)
{
 return &rtl8225se_ops;
}
