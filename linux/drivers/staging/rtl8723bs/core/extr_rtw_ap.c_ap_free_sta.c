
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int agg_enable_bitmap; int candidate_tid_bitmap; } ;
struct sta_info {int hwaddr; int lock; int state; TYPE_1__ htpriv; } ;
struct adapter {int dummy; } ;


 int _FW_LINKED ;
 int bss_cap_update_on_sta_leave (struct adapter*,struct sta_info*) ;
 int issue_deauth (struct adapter*,int ,int ) ;
 int report_del_sta_event (struct adapter*,int ,int ) ;
 int rtw_cfg80211_indicate_sta_disassoc (struct adapter*,int ,int ) ;
 int rtw_clearstakey_cmd (struct adapter*,struct sta_info*,int) ;
 int rtw_free_stainfo (struct adapter*,struct sta_info*) ;
 int send_delba (struct adapter*,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u8 ap_free_sta(
 struct adapter *padapter,
 struct sta_info *psta,
 bool active,
 u16 reason
)
{
 u8 beacon_updated = 0;

 if (!psta)
  return beacon_updated;

 if (active) {

  send_delba(padapter, 0, psta->hwaddr);


  send_delba(padapter, 1, psta->hwaddr);

  issue_deauth(padapter, psta->hwaddr, reason);
 }

 psta->htpriv.agg_enable_bitmap = 0x0;
 psta->htpriv.candidate_tid_bitmap = 0x0;




 rtw_clearstakey_cmd(padapter, psta, 1);

 spin_lock_bh(&psta->lock);
 psta->state &= ~_FW_LINKED;
 spin_unlock_bh(&psta->lock);

 rtw_cfg80211_indicate_sta_disassoc(padapter, psta->hwaddr, reason);

 report_del_sta_event(padapter, psta->hwaddr, reason);

 beacon_updated = bss_cap_update_on_sta_leave(padapter, psta);

 rtw_free_stainfo(padapter, psta);

 return beacon_updated;
}
