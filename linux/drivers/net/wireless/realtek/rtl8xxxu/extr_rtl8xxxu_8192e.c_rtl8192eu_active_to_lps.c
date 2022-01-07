
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8xxxu_priv {TYPE_1__* udev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CR_HCI_RXDMA_ENABLE ;
 int CR_HCI_TXDMA_ENABLE ;
 int CR_SECURITY_ENABLE ;
 int DUAL_TSF_TX_OK ;
 int EBUSY ;
 int REG_CR ;
 int REG_DUAL_TSF_RST ;
 int REG_SCH_TX_CMD ;
 int REG_SYS_FUNC ;
 int REG_TXPAUSE ;
 int SYS_FUNC_BBRSTB ;
 int SYS_FUNC_BB_GLB_RSTN ;
 int dev_warn (struct device*,char*) ;
 int rtl8xxxu_read16 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int rtl8192eu_active_to_lps(struct rtl8xxxu_priv *priv)
{
 struct device *dev = &priv->udev->dev;
 u8 val8;
 u16 val16;
 u32 val32;
 int retry, retval;

 rtl8xxxu_write8(priv, REG_TXPAUSE, 0xff);

 retry = 100;
 retval = -EBUSY;



 do {
  val32 = rtl8xxxu_read32(priv, REG_SCH_TX_CMD);
  if (!val32) {
   retval = 0;
   break;
  }
 } while (retry--);

 if (!retry) {
  dev_warn(dev, "Failed to flush TX queue\n");
  retval = -EBUSY;
  goto out;
 }


 val8 = rtl8xxxu_read8(priv, REG_SYS_FUNC);
 val8 &= ~SYS_FUNC_BBRSTB;
 rtl8xxxu_write8(priv, REG_SYS_FUNC, val8);

 udelay(2);


 val8 = rtl8xxxu_read8(priv, REG_SYS_FUNC);
 val8 &= ~SYS_FUNC_BB_GLB_RSTN;
 rtl8xxxu_write8(priv, REG_SYS_FUNC, val8);


 val16 = rtl8xxxu_read16(priv, REG_CR);
 val16 &= 0xff00;
 val16 |= (CR_HCI_TXDMA_ENABLE | CR_HCI_RXDMA_ENABLE);
 rtl8xxxu_write16(priv, REG_CR, val16);

 val16 = rtl8xxxu_read16(priv, REG_CR);
 val16 &= ~CR_SECURITY_ENABLE;
 rtl8xxxu_write16(priv, REG_CR, val16);

 val8 = rtl8xxxu_read8(priv, REG_DUAL_TSF_RST);
 val8 |= DUAL_TSF_TX_OK;
 rtl8xxxu_write8(priv, REG_DUAL_TSF_RST, val8);

out:
 return retval;
}
