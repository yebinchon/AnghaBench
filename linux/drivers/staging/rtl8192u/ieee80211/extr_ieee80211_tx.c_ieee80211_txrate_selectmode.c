
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {scalar_t__ iw_mode; scalar_t__ bTxUseDriverAssingedRate; scalar_t__ bTxDisableRateFallBack; } ;
struct cb_desc {int bTxDisableRateFallBack; int bTxUseDriverAssingedRate; scalar_t__ RATRIndex; } ;


 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;

__attribute__((used)) static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
     struct cb_desc *tcb_desc)
{
 if (ieee->bTxDisableRateFallBack)
  tcb_desc->bTxDisableRateFallBack = 1;

 if (ieee->bTxUseDriverAssingedRate)
  tcb_desc->bTxUseDriverAssingedRate = 1;
 if (!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate) {
  if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC)
   tcb_desc->RATRIndex = 0;
 }
}
