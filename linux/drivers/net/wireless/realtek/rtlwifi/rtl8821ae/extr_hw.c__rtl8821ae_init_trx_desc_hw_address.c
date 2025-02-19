
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct rtl_pci {TYPE_2__* rx_ring; TYPE_1__* tx_ring; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int dma; } ;


 size_t BEACON_QUEUE ;
 size_t BE_QUEUE ;
 size_t BK_QUEUE ;
 int DMA_BIT_MASK (int) ;
 size_t HIGH_QUEUE ;
 size_t MGNT_QUEUE ;
 int REG_BCNQ_DESA ;
 int REG_BEQ_DESA ;
 int REG_BKQ_DESA ;
 int REG_HQ_DESA ;
 int REG_MGQ_DESA ;
 int REG_RX_DESA ;
 int REG_VIQ_DESA ;
 int REG_VOQ_DESA ;
 size_t RX_MPDU_QUEUE ;
 size_t VI_QUEUE ;
 size_t VO_QUEUE ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl8821ae_init_trx_desc_hw_address(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));


 rtl_write_dword(rtlpriv, REG_BCNQ_DESA,
   rtlpci->tx_ring[BEACON_QUEUE].dma & DMA_BIT_MASK(32));
 rtl_write_dword(rtlpriv, REG_MGQ_DESA,
   rtlpci->tx_ring[MGNT_QUEUE].dma & DMA_BIT_MASK(32));
 rtl_write_dword(rtlpriv, REG_VOQ_DESA,
   rtlpci->tx_ring[VO_QUEUE].dma & DMA_BIT_MASK(32));
 rtl_write_dword(rtlpriv, REG_VIQ_DESA,
   rtlpci->tx_ring[VI_QUEUE].dma & DMA_BIT_MASK(32));
 rtl_write_dword(rtlpriv, REG_BEQ_DESA,
   rtlpci->tx_ring[BE_QUEUE].dma & DMA_BIT_MASK(32));
 rtl_write_dword(rtlpriv, REG_BKQ_DESA,
   rtlpci->tx_ring[BK_QUEUE].dma & DMA_BIT_MASK(32));
 rtl_write_dword(rtlpriv, REG_HQ_DESA,
   rtlpci->tx_ring[HIGH_QUEUE].dma & DMA_BIT_MASK(32));
 rtl_write_dword(rtlpriv, REG_RX_DESA,
   rtlpci->rx_ring[RX_MPDU_QUEUE].dma & DMA_BIT_MASK(32));
}
