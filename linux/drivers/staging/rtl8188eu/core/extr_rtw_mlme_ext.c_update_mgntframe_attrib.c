
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {int hdrlen; int nr_frags; int priority; int qsel; int raid; int bswenc; int qos_en; int ht_en; int sgi; int retry_ctrl; int seqnum; int ch_offset; int bwmode; int encrypt; scalar_t__ pktlen; scalar_t__ mac_id; } ;
struct mlme_ext_priv {int cur_wireless_mode; int mgnt_seq; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HT_CHANNEL_WIDTH_20 ;
 int WIRELESS_11B ;
 int _NO_PRIVACY_ ;
 int memset (int *,int ,int) ;

void update_mgntframe_attrib(struct adapter *padapter, struct pkt_attrib *pattrib)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 memset((u8 *)(pattrib), 0, sizeof(struct pkt_attrib));

 pattrib->hdrlen = 24;
 pattrib->nr_frags = 1;
 pattrib->priority = 7;
 pattrib->mac_id = 0;
 pattrib->qsel = 0x12;

 pattrib->pktlen = 0;

 if (pmlmeext->cur_wireless_mode & WIRELESS_11B)
  pattrib->raid = 6;
 else
  pattrib->raid = 5;

 pattrib->encrypt = _NO_PRIVACY_;
 pattrib->bswenc = 0;

 pattrib->qos_en = 0;
 pattrib->ht_en = 0;
 pattrib->bwmode = HT_CHANNEL_WIDTH_20;
 pattrib->ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 pattrib->sgi = 0;

 pattrib->seqnum = pmlmeext->mgnt_seq;

 pattrib->retry_ctrl = 1;
}
