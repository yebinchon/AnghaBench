
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {int hdrlen; int nr_frags; int priority; int qsel; scalar_t__ rate; int bswenc; int qos_en; int ht_en; int sgi; int retry_ctrl; scalar_t__ mbssid; int seqnum; int ch_offset; int bwmode; int encrypt; int raid; scalar_t__ pktlen; scalar_t__ mac_id; } ;
struct mlme_ext_priv {scalar_t__ tx_rate; int mgnt_seq; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int CHANNEL_WIDTH_20 ;
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 scalar_t__ IEEE80211_CCK_RATE_1MB ;
 int WIRELESS_11B ;
 int WIRELESS_11G ;
 int _NO_PRIVACY_ ;
 int rtw_get_mgntframe_raid (struct adapter*,int ) ;

void update_mgntframe_attrib(struct adapter *padapter, struct pkt_attrib *pattrib)
{
 u8 wireless_mode;
 struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);



 pattrib->hdrlen = 24;
 pattrib->nr_frags = 1;
 pattrib->priority = 7;
 pattrib->mac_id = 0;
 pattrib->qsel = 0x12;

 pattrib->pktlen = 0;

 if (pmlmeext->tx_rate == IEEE80211_CCK_RATE_1MB)
  wireless_mode = WIRELESS_11B;
 else
  wireless_mode = WIRELESS_11G;
 pattrib->raid = rtw_get_mgntframe_raid(padapter, wireless_mode);
 pattrib->rate = pmlmeext->tx_rate;

 pattrib->encrypt = _NO_PRIVACY_;
 pattrib->bswenc = 0;

 pattrib->qos_en = 0;
 pattrib->ht_en = 0;
 pattrib->bwmode = CHANNEL_WIDTH_20;
 pattrib->ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 pattrib->sgi = 0;

 pattrib->seqnum = pmlmeext->mgnt_seq;

 pattrib->retry_ctrl = 1;

 pattrib->mbssid = 0;

}
