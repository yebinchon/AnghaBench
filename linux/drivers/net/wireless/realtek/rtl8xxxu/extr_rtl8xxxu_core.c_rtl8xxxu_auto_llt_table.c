
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl8xxxu_priv {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int AUTO_LLT_INIT_LLT ;
 int EBUSY ;
 int REG_AUTO_LLT ;
 int dev_warn (int *,char*) ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int usleep_range (int,int) ;

int rtl8xxxu_auto_llt_table(struct rtl8xxxu_priv *priv)
{
 u32 val32;
 int ret = 0;
 int i;

 val32 = rtl8xxxu_read32(priv, REG_AUTO_LLT);
 val32 |= AUTO_LLT_INIT_LLT;
 rtl8xxxu_write32(priv, REG_AUTO_LLT, val32);

 for (i = 500; i; i--) {
  val32 = rtl8xxxu_read32(priv, REG_AUTO_LLT);
  if (!(val32 & AUTO_LLT_INIT_LLT))
   break;
  usleep_range(2, 4);
 }

 if (!i) {
  ret = -EBUSY;
  dev_warn(&priv->udev->dev, "LLT table init failed\n");
 }

 return ret;
}
