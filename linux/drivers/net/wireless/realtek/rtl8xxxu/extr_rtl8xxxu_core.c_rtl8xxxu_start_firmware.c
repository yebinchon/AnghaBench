
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rtl8xxxu_priv {scalar_t__ rtl_chip; TYPE_2__* fops; TYPE_1__* udev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* reset_8051 ) (struct rtl8xxxu_priv*) ;} ;
struct TYPE_3__ {struct device dev; } ;


 int EAGAIN ;
 int MCU_FW_DL_CSUM_REPORT ;
 int MCU_FW_DL_READY ;
 int MCU_WINT_INIT_READY ;
 int REG_HMTFR ;
 int REG_MCU_FW_DL ;
 scalar_t__ RTL8723B ;
 int RTL8XXXU_FIRMWARE_POLL_MAX ;
 int dev_warn (struct device*,char*) ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int) ;
 int stub1 (struct rtl8xxxu_priv*) ;
 int udelay (int) ;

__attribute__((used)) static int rtl8xxxu_start_firmware(struct rtl8xxxu_priv *priv)
{
 struct device *dev = &priv->udev->dev;
 int ret = 0, i;
 u32 val32;


 for (i = 0; i < RTL8XXXU_FIRMWARE_POLL_MAX; i++) {
  val32 = rtl8xxxu_read32(priv, REG_MCU_FW_DL);
  if (val32 & MCU_FW_DL_CSUM_REPORT)
   break;
 }

 if (i == RTL8XXXU_FIRMWARE_POLL_MAX) {
  dev_warn(dev, "Firmware checksum poll timed out\n");
  ret = -EAGAIN;
  goto exit;
 }

 val32 = rtl8xxxu_read32(priv, REG_MCU_FW_DL);
 val32 |= MCU_FW_DL_READY;
 val32 &= ~MCU_WINT_INIT_READY;
 rtl8xxxu_write32(priv, REG_MCU_FW_DL, val32);





 priv->fops->reset_8051(priv);


 for (i = 0; i < RTL8XXXU_FIRMWARE_POLL_MAX; i++) {
  val32 = rtl8xxxu_read32(priv, REG_MCU_FW_DL);
  if (val32 & MCU_WINT_INIT_READY)
   break;

  udelay(100);
 }

 if (i == RTL8XXXU_FIRMWARE_POLL_MAX) {
  dev_warn(dev, "Firmware failed to start\n");
  ret = -EAGAIN;
  goto exit;
 }




 if (priv->rtl_chip == RTL8723B)
  rtl8xxxu_write8(priv, REG_HMTFR, 0x0f);
exit:
 return ret;
}
