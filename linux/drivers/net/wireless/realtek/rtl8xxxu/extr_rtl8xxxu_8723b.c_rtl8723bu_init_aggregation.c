
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int REG_RXDMA_AGG_PG_TH ;
 int REG_TRXDMA_CTRL ;
 int RXDMA_USB_AGG_ENABLE ;
 int TRXDMA_CTRL_RXDMA_AGG_EN ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int ) ;

__attribute__((used)) static void rtl8723bu_init_aggregation(struct rtl8xxxu_priv *priv)
{
 u32 agg_rx;
 u8 agg_ctrl;




 agg_ctrl = rtl8xxxu_read8(priv, REG_TRXDMA_CTRL);
 agg_ctrl &= ~TRXDMA_CTRL_RXDMA_AGG_EN;

 agg_rx = rtl8xxxu_read32(priv, REG_RXDMA_AGG_PG_TH);
 agg_rx &= ~RXDMA_USB_AGG_ENABLE;
 agg_rx &= ~0xff0f;

 rtl8xxxu_write8(priv, REG_TRXDMA_CTRL, agg_ctrl);
 rtl8xxxu_write32(priv, REG_RXDMA_AGG_PG_TH, agg_rx);
}
