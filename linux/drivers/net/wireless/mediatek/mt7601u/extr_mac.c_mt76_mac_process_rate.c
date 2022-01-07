
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_rx_status {int rate_idx; int enc_flags; int bw; int encoding; } ;


 int FIELD_GET (int ,int) ;




 int MT_RXWI_RATE_BW ;
 int MT_RXWI_RATE_MCS ;
 int MT_RXWI_RATE_PHY ;
 int MT_RXWI_RATE_SGI ;
 int MT_RXWI_RATE_STBC ;
 int RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_HT_GF ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_FLAG_STBC_SHIFT ;
 int RX_ENC_HT ;
 int WARN_ON (int) ;

__attribute__((used)) static void
mt76_mac_process_rate(struct ieee80211_rx_status *status, u16 rate)
{
 u8 idx = FIELD_GET(MT_RXWI_RATE_MCS, rate);

 switch (FIELD_GET(MT_RXWI_RATE_PHY, rate)) {
 case 128:
  if (WARN_ON(idx >= 8))
   idx = 0;
  idx += 4;

  status->rate_idx = idx;
  return;
 case 131:
  if (idx >= 8) {
   idx -= 8;
   status->enc_flags |= RX_ENC_FLAG_SHORTPRE;
  }

  if (WARN_ON(idx >= 4))
   idx = 0;

  status->rate_idx = idx;
  return;
 case 129:
  status->enc_flags |= RX_ENC_FLAG_HT_GF;

 case 130:
  status->encoding = RX_ENC_HT;
  status->rate_idx = idx;
  break;
 default:
  WARN_ON(1);
  return;
 }

 if (rate & MT_RXWI_RATE_SGI)
  status->enc_flags |= RX_ENC_FLAG_SHORT_GI;

 if (rate & MT_RXWI_RATE_STBC)
  status->enc_flags |= 1 << RX_ENC_FLAG_STBC_SHIFT;

 if (rate & MT_RXWI_RATE_BW)
  status->bw = RATE_INFO_BW_40;
}
