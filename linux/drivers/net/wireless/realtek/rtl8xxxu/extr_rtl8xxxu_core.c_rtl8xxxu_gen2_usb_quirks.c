
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int REG_TXDMA_OFFSET_CHK ;
 int TXDMA_OFFSET_DROP_DATA_EN ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int ) ;

void rtl8xxxu_gen2_usb_quirks(struct rtl8xxxu_priv *priv)
{
 u32 val32;

 val32 = rtl8xxxu_read32(priv, REG_TXDMA_OFFSET_CHK);
 val32 |= TXDMA_OFFSET_DROP_DATA_EN;
 rtl8xxxu_write32(priv, REG_TXDMA_OFFSET_CHK, val32);
}
