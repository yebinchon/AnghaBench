
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {int entries; int cur_tx_wp; int cur_tx_rp; } ;
struct ieee80211_hw {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int dma64; } ;


 int BEACON_QUEUE ;
 int DMA_BIT_MASK (int) ;




 scalar_t__ MAX_RECEIVE_BUFFER_SIZE ;
 scalar_t__ RX_DESC_SIZE ;
 int WARN_ONCE (int,char*,int) ;
 int get_desc_addr_fr_q_idx (int) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int set_rx_buffer_desc_data_length (int *,scalar_t__) ;
 int set_rx_buffer_desc_fs (int *,int ) ;
 int set_rx_buffer_desc_ls (int *,int ) ;
 int set_rx_buffer_desc_total_length (int *,int ) ;
 int set_rx_buffer_physical_high (int *,int,int) ;
 int set_rx_buffer_physical_low (int *,int) ;
 int set_rx_desc_eor (int *,int) ;
 int set_tx_buff_desc_own (int *,int) ;
 int set_tx_desc_next_desc_address (int *,int ) ;

void rtl92ee_set_desc(struct ieee80211_hw *hw, u8 *pdesc8, bool istx,
        u8 desc_name, u8 *val)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 q_idx = *val;
 bool dma64 = rtlpriv->cfg->mod_params->dma64;
 __le32 *pdesc = (__le32 *)pdesc8;

 if (istx) {
  switch (desc_name) {
  case 128:
   set_tx_desc_next_desc_address(pdesc, *(u32 *)val);
   break;
  case 131:{
   struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
   struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[q_idx];
   u16 max_tx_desc = ring->entries;

   if (q_idx == BEACON_QUEUE) {
    ring->cur_tx_wp = 0;
    ring->cur_tx_rp = 0;
    set_tx_buff_desc_own(pdesc, 1);
    return;
   }


   ring->cur_tx_wp = ((ring->cur_tx_wp + 1) % max_tx_desc);

   rtl_write_word(rtlpriv,
           get_desc_addr_fr_q_idx(q_idx),
           ring->cur_tx_wp);
  }
  break;
  }
 } else {
  switch (desc_name) {
  case 129:
   set_rx_buffer_desc_ls(pdesc, 0);
   set_rx_buffer_desc_fs(pdesc, 0);
   set_rx_buffer_desc_total_length(pdesc, 0);

   set_rx_buffer_desc_data_length(pdesc,
             MAX_RECEIVE_BUFFER_SIZE +
             RX_DESC_SIZE);

   set_rx_buffer_physical_low(pdesc, (*(dma_addr_t *)val) &
         DMA_BIT_MASK(32));
   set_rx_buffer_physical_high(pdesc,
          ((u64)(*(dma_addr_t *)val)
          >> 32),
          dma64);
   break;
  case 130:
   set_rx_desc_eor(pdesc, 1);
   break;
  default:
   WARN_ONCE(1,
      "rtl8192ee: ERR rxdesc :%d not processed\n",
      desc_name);
   break;
  }
 }
}
