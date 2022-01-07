
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct rtl_sta_info {TYPE_2__* tids; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {scalar_t__ opmode; int cnt_after_linked; scalar_t__ act_scanning; } ;
struct TYPE_3__ {scalar_t__ agg_state; } ;
struct TYPE_4__ {TYPE_1__ agg; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ RTL_AGG_STOP ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;

__attribute__((used)) static bool _rtl_tx_aggr_check(struct rtl_priv *rtlpriv,
          struct rtl_sta_info *sta_entry, u16 tid)
{
 struct rtl_mac *mac = rtl_mac(rtlpriv);

 if (mac->act_scanning)
  return 0;

 if (mac->opmode == NL80211_IFTYPE_STATION &&
     mac->cnt_after_linked < 3)
  return 0;

 if (sta_entry->tids[tid].agg.agg_state == RTL_AGG_STOP)
  return 1;

 return 0;
}
