
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned short u16 ;
struct TYPE_2__ {int* txseq_tid; } ;
struct sta_info {TYPE_1__ sta_xmitpriv; } ;
struct qos_priv {scalar_t__ qos_option; } ;
struct pkt_attrib {int subtype; int hdrlen; size_t priority; int seqnum; int ra; struct sta_info* psta; int ack_policy; scalar_t__ encrypt; int src; int dst; } ;
struct mlme_priv {struct qos_priv qospriv; } ;
struct ieee80211_hdr {int addr3; int addr2; int addr1; int frame_ctl; } ;
struct _adapter {int stapriv; struct mlme_priv mlmepriv; } ;
typedef int __le16 ;


 int EINVAL ;
 int ETH_ALEN ;
 int SetAckpolicy (unsigned short*,int ) ;
 int SetFrDs (int *) ;
 int SetFrameSubType (int *,int) ;
 int SetPriority (unsigned short*,size_t) ;
 int SetPrivacy (int *) ;
 int SetSeqNum (int *,int) ;
 int SetToDs (int *) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_DATA_TYPE ;
 int WIFI_MP_STATE ;
 int WIFI_STATION_STATE ;
 int WLANHDR_OFFSET ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int get_bssid (struct mlme_priv*) ;
 int is_multicast_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int ,int ) ;
 struct sta_info* r8712_get_bcmc_stainfo (struct _adapter*) ;
 struct sta_info* r8712_get_stainfo (int *,int ) ;

__attribute__((used)) static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
   struct pkt_attrib *pattrib)
{
 u16 *qc;

 struct ieee80211_hdr *pwlanhdr = (struct ieee80211_hdr *)hdr;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct qos_priv *pqospriv = &pmlmepriv->qospriv;
 __le16 *fctrl = &pwlanhdr->frame_ctl;

 memset(hdr, 0, WLANHDR_OFFSET);
 SetFrameSubType(fctrl, pattrib->subtype);
 if (pattrib->subtype & WIFI_DATA_TYPE) {
  if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {

   SetToDs(fctrl);
   memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
    ETH_ALEN);
   memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
   memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
  } else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {

   SetFrDs(fctrl);
   memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
   memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv),
    ETH_ALEN);
   memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
  } else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
      check_fwstate(pmlmepriv,
      WIFI_ADHOC_MASTER_STATE)) {
   memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
   memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
   memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
    ETH_ALEN);
  } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
   memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
   memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
   memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
    ETH_ALEN);
  } else {
   return -EINVAL;
  }

  if (pattrib->encrypt)
   SetPrivacy(fctrl);
  if (pqospriv->qos_option) {
   qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
   if (pattrib->priority)
    SetPriority(qc, pattrib->priority);
   SetAckpolicy(qc, pattrib->ack_policy);
  }


  {
   struct sta_info *psta;
   bool bmcst = is_multicast_ether_addr(pattrib->ra);

   if (pattrib->psta) {
    psta = pattrib->psta;
   } else {
    if (bmcst)
     psta = r8712_get_bcmc_stainfo(padapter);
    else
     psta =
      r8712_get_stainfo(&padapter->stapriv,
      pattrib->ra);
   }
   if (psta) {
    psta->sta_xmitpriv.txseq_tid
        [pattrib->priority]++;
    psta->sta_xmitpriv.txseq_tid[pattrib->priority]
         &= 0xFFF;
    pattrib->seqnum = psta->sta_xmitpriv.
        txseq_tid[pattrib->priority];
    SetSeqNum(hdr, pattrib->seqnum);
   }
  }
 }
 return 0;
}
