
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;


 int BIT (int) ;
 int DESC_RATE1M ;
 int QSLT_MGNT ;
 int RTL_TX_HEADER_SIZE ;
 int _rtl_tx_desc_checksum (int *) ;
 int memset (int *,int ,int ) ;
 int set_tx_desc_first_seg (int *,int) ;
 int set_tx_desc_hwseq_en (int *,int) ;
 int set_tx_desc_last_seg (int *,int) ;
 int set_tx_desc_nav_use_hdr (int *,int) ;
 int set_tx_desc_offset (int *,int ) ;
 int set_tx_desc_own (int *,int) ;
 int set_tx_desc_pkt_id (int *,int ) ;
 int set_tx_desc_pkt_size (int *,int ) ;
 int set_tx_desc_queue_sel (int *,int ) ;
 int set_tx_desc_tx_rate (int *,int ) ;
 int set_tx_desc_use_rate (int *,int) ;

void rtl92cu_fill_fake_txdesc(struct ieee80211_hw *hw, u8 *pdesc8,
         u32 buffer_len, bool is_pspoll)
{
 __le32 *pdesc = (__le32 *)pdesc8;


 memset(pdesc, 0, RTL_TX_HEADER_SIZE);
 set_tx_desc_first_seg(pdesc, 1);
 set_tx_desc_last_seg(pdesc, 1);
 set_tx_desc_offset(pdesc, RTL_TX_HEADER_SIZE);
 set_tx_desc_pkt_size(pdesc, buffer_len);
 set_tx_desc_queue_sel(pdesc, QSLT_MGNT);


 if (is_pspoll) {
  set_tx_desc_nav_use_hdr(pdesc, 1);
 } else {
  set_tx_desc_hwseq_en(pdesc, 1);
  set_tx_desc_pkt_id(pdesc, BIT(3));
 }
 set_tx_desc_use_rate(pdesc, 1);
 set_tx_desc_own(pdesc, 1);
 set_tx_desc_tx_rate(pdesc, DESC_RATE1M);
 _rtl_tx_desc_checksum(pdesc);
}
