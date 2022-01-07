
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8xxxu_priv {scalar_t__ vendor_umc; int chip_cut; } ;


 int REG_TXDMA_OFFSET_CHK ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int,int) ;

void rtl8xxxu_gen1_usb_quirks(struct rtl8xxxu_priv *priv)
{

 rtl8xxxu_write8(priv, 0xfe40, 0xe0);
 rtl8xxxu_write8(priv, 0xfe41, 0x8d);
 rtl8xxxu_write8(priv, 0xfe42, 0x80);




 rtl8xxxu_write32(priv, REG_TXDMA_OFFSET_CHK, 0xfd0320);





 if (!(!priv->chip_cut && priv->vendor_umc)) {
  rtl8xxxu_write8(priv, 0xfe40, 0xe6);
  rtl8xxxu_write8(priv, 0xfe41, 0x94);
  rtl8xxxu_write8(priv, 0xfe42, 0x80);

  rtl8xxxu_write8(priv, 0xfe40, 0xe0);
  rtl8xxxu_write8(priv, 0xfe41, 0x19);
  rtl8xxxu_write8(priv, 0xfe42, 0x80);

  rtl8xxxu_write8(priv, 0xfe40, 0xe5);
  rtl8xxxu_write8(priv, 0xfe41, 0x91);
  rtl8xxxu_write8(priv, 0xfe42, 0x80);

  rtl8xxxu_write8(priv, 0xfe40, 0xe2);
  rtl8xxxu_write8(priv, 0xfe41, 0x81);
  rtl8xxxu_write8(priv, 0xfe42, 0x80);
 }
}
