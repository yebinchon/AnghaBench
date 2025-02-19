
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct pkt_attrib {int nr_frags; scalar_t__ last_txcmdsz; void* vcs_mode; scalar_t__ ampdu_en; scalar_t__ ht_en; struct sta_info* psta; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;
struct sta_info {scalar_t__ cts2self; scalar_t__ rtsen; } ;
struct mlme_ext_info {scalar_t__ assoc_AP_vendor; int HT_protection; } ;
struct mlme_ext_priv {scalar_t__ cur_wireless_mode; scalar_t__ cur_bwmode; struct mlme_ext_info mlmext_info; } ;
struct TYPE_6__ {scalar_t__ rts_thresh; scalar_t__ wifi_spec; } ;
struct TYPE_5__ {scalar_t__ dot11PrivacyAlgrthm; } ;
struct TYPE_4__ {scalar_t__ frag_len; } ;
struct adapter {TYPE_3__ registrypriv; TYPE_2__ securitypriv; TYPE_1__ xmitpriv; struct mlme_ext_priv mlmeextpriv; } ;


 void* CTS_TO_SELF ;
 scalar_t__ HT_IOT_PEER_ATHEROS ;
 void* NONE_VCS ;
 void* RTS_CTS ;
 scalar_t__ WIRELESS_11_24N ;
 scalar_t__ _AES_ ;

__attribute__((used)) static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *pxmitframe)
{
 u32 sz;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;
 struct sta_info *psta = pattrib->psta;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 if (pattrib->nr_frags != 1)
  sz = padapter->xmitpriv.frag_len;
 else
  sz = pattrib->last_txcmdsz;







 if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N || padapter->registrypriv.wifi_spec) {
  if (sz > padapter->registrypriv.rts_thresh) {
   pattrib->vcs_mode = RTS_CTS;
  } else {
   if (psta->rtsen)
    pattrib->vcs_mode = RTS_CTS;
   else if (psta->cts2self)
    pattrib->vcs_mode = CTS_TO_SELF;
   else
    pattrib->vcs_mode = NONE_VCS;
  }
 } else {
  while (1) {

   if ((pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_ATHEROS) && pattrib->ampdu_en &&
       (padapter->securitypriv.dot11PrivacyAlgrthm == _AES_)) {
    pattrib->vcs_mode = CTS_TO_SELF;
    break;
   }


   if (psta->rtsen || psta->cts2self) {
    if (psta->rtsen)
     pattrib->vcs_mode = RTS_CTS;
    else if (psta->cts2self)
     pattrib->vcs_mode = CTS_TO_SELF;

    break;
   }


   if (pattrib->ht_en) {
    u8 htopmode = pmlmeinfo->HT_protection;

    if ((pmlmeext->cur_bwmode && (htopmode == 2 || htopmode == 3)) ||
        (!pmlmeext->cur_bwmode && htopmode == 3)) {
     pattrib->vcs_mode = RTS_CTS;
     break;
    }
   }


   if (sz > padapter->registrypriv.rts_thresh) {
    pattrib->vcs_mode = RTS_CTS;
    break;
   }




   if (pattrib->ampdu_en) {
    pattrib->vcs_mode = RTS_CTS;
    break;
   }

   pattrib->vcs_mode = NONE_VCS;
   break;
  }
 }
}
