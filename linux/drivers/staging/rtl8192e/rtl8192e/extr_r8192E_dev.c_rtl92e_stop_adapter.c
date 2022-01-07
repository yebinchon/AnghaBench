
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int bHwRfOffAction; int skb_queue; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * skb_aggQ; int * skb_waitQ; int bSupportRemoteWakeUp; int (* SetHwRegHandler ) (struct net_device*,int ,int*) ;} ;


 int CMDR ;
 int CPU_GEN ;
 int CPU_GEN_SYSTEM_RESET ;
 int HW_VAR_MEDIA_STATUS ;
 int MAX_QUEUE_SIZE ;
 int MacBlkCtrl ;
 int PMR ;
 int RT_OP_MODE_NO_LINK ;
 int WFCRC0 ;
 int WFCRC1 ;
 int WFCRC2 ;
 int mdelay (int) ;
 int rtl92e_readl (struct net_device*,int ) ;
 int rtl92e_set_rf_off (struct net_device*) ;
 int rtl92e_writeb (struct net_device*,int ,int) ;
 int rtl92e_writel (struct net_device*,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct net_device*,int ,int*) ;

void rtl92e_stop_adapter(struct net_device *dev, bool reset)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 int i;
 u8 OpMode;
 u8 u1bTmp;
 u32 ulRegRead;

 OpMode = RT_OP_MODE_NO_LINK;
 priv->rtllib->SetHwRegHandler(dev, HW_VAR_MEDIA_STATUS, &OpMode);

 if (!priv->rtllib->bSupportRemoteWakeUp) {
  u1bTmp = 0x0;
  rtl92e_writeb(dev, CMDR, u1bTmp);
 }

 mdelay(20);

 if (!reset) {
  mdelay(150);

  priv->bHwRfOffAction = 2;

  if (!priv->rtllib->bSupportRemoteWakeUp) {
   rtl92e_set_rf_off(dev);
   ulRegRead = rtl92e_readl(dev, CPU_GEN);
   ulRegRead |= CPU_GEN_SYSTEM_RESET;
   rtl92e_writel(dev, CPU_GEN, ulRegRead);
  } else {
   rtl92e_writel(dev, WFCRC0, 0xffffffff);
   rtl92e_writel(dev, WFCRC1, 0xffffffff);
   rtl92e_writel(dev, WFCRC2, 0xffffffff);


   rtl92e_writeb(dev, PMR, 0x5);
   rtl92e_writeb(dev, MacBlkCtrl, 0xa);
  }
 }

 for (i = 0; i < MAX_QUEUE_SIZE; i++)
  skb_queue_purge(&priv->rtllib->skb_waitQ[i]);
 for (i = 0; i < MAX_QUEUE_SIZE; i++)
  skb_queue_purge(&priv->rtllib->skb_aggQ[i]);

 skb_queue_purge(&priv->skb_queue);
}
