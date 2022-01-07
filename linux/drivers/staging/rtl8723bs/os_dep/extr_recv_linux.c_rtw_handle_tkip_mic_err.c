
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_2__ data; TYPE_1__ src_addr; int flags; } ;
typedef scalar_t__ u8 ;
struct security_priv {unsigned long last_mic_err_time; int btkip_countermeasure; unsigned long btkip_countermeasure_time; } ;
struct mlme_priv {int * assoc_bssid; } ;
struct iw_michaelmicfailure {TYPE_2__ data; TYPE_1__ src_addr; int flags; } ;
struct adapter {int pnetdev; struct security_priv securitypriv; struct mlme_priv mlmepriv; } ;
typedef int ev ;
typedef enum nl80211_key_type { ____Placeholder_nl80211_key_type } nl80211_key_type ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int HZ ;
 int IW_MICFAILURE_GROUP ;
 int IW_MICFAILURE_PAIRWISE ;
 int NL80211_KEYTYPE_GROUP ;
 int NL80211_KEYTYPE_PAIRWISE ;
 int cfg80211_michael_mic_failure (int ,scalar_t__*,int,int,int *,int ) ;
 void* jiffies ;
 int memcpy (int ,int *,int ) ;
 int memset (union iwreq_data*,int,int) ;

void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
{
 enum nl80211_key_type key_type = 0;
 union iwreq_data wrqu;
 struct iw_michaelmicfailure ev;
 struct mlme_priv* pmlmepriv = &padapter->mlmepriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 unsigned long cur_time = 0;

 if (psecuritypriv->last_mic_err_time == 0) {
  psecuritypriv->last_mic_err_time = jiffies;
 } else {
  cur_time = jiffies;

  if (cur_time - psecuritypriv->last_mic_err_time < 60*HZ) {
   psecuritypriv->btkip_countermeasure = 1;
   psecuritypriv->last_mic_err_time = 0;
   psecuritypriv->btkip_countermeasure_time = cur_time;
  } else {
   psecuritypriv->last_mic_err_time = jiffies;
  }
 }

 if (bgroup) {
  key_type |= NL80211_KEYTYPE_GROUP;
 } else {
  key_type |= NL80211_KEYTYPE_PAIRWISE;
 }

 cfg80211_michael_mic_failure(padapter->pnetdev, (u8 *)&pmlmepriv->assoc_bssid[ 0 ], key_type, -1,
  ((void*)0), GFP_ATOMIC);

 memset(&ev, 0x00, sizeof(ev));
 if (bgroup) {
  ev.flags |= IW_MICFAILURE_GROUP;
 } else {
  ev.flags |= IW_MICFAILURE_PAIRWISE;
 }

 ev.src_addr.sa_family = ARPHRD_ETHER;
 memcpy(ev.src_addr.sa_data, &pmlmepriv->assoc_bssid[ 0 ], ETH_ALEN);

 memset(&wrqu, 0x00, sizeof(wrqu));
 wrqu.data.length = sizeof(ev);
}
