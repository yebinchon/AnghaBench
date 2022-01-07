
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int SifsTime; void* framesync; void* framesyncC34; void** DefaultInitialGain; void** MCSTxPowerLevelOriginalOffset; } ;
struct net_device {int dummy; } ;


 int COMP_INIT ;
 int RT_TRACE (int ,char*,int ,void*,...) ;
 int SIFS ;
 int rOFDM0_RxDetector2 ;
 int rOFDM0_RxDetector3 ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XCAGCCore1 ;
 int rOFDM0_XDAGCCore1 ;
 int rTxAGC_Mcs03_Mcs00 ;
 int rTxAGC_Mcs07_Mcs04 ;
 int rTxAGC_Mcs11_Mcs08 ;
 int rTxAGC_Mcs15_Mcs12 ;
 int rTxAGC_Rate18_06 ;
 int rTxAGC_Rate54_24 ;
 void* rtl92e_readb (struct net_device*,int ) ;
 void* rtl92e_readl (struct net_device*,int ) ;
 int rtl92e_readw (struct net_device*,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_get_tx_power(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 priv->MCSTxPowerLevelOriginalOffset[0] =
  rtl92e_readl(dev, rTxAGC_Rate18_06);
 priv->MCSTxPowerLevelOriginalOffset[1] =
  rtl92e_readl(dev, rTxAGC_Rate54_24);
 priv->MCSTxPowerLevelOriginalOffset[2] =
  rtl92e_readl(dev, rTxAGC_Mcs03_Mcs00);
 priv->MCSTxPowerLevelOriginalOffset[3] =
  rtl92e_readl(dev, rTxAGC_Mcs07_Mcs04);
 priv->MCSTxPowerLevelOriginalOffset[4] =
  rtl92e_readl(dev, rTxAGC_Mcs11_Mcs08);
 priv->MCSTxPowerLevelOriginalOffset[5] =
  rtl92e_readl(dev, rTxAGC_Mcs15_Mcs12);

 priv->DefaultInitialGain[0] = rtl92e_readb(dev, rOFDM0_XAAGCCore1);
 priv->DefaultInitialGain[1] = rtl92e_readb(dev, rOFDM0_XBAGCCore1);
 priv->DefaultInitialGain[2] = rtl92e_readb(dev, rOFDM0_XCAGCCore1);
 priv->DefaultInitialGain[3] = rtl92e_readb(dev, rOFDM0_XDAGCCore1);
 RT_TRACE(COMP_INIT,
   "Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x)\n",
   priv->DefaultInitialGain[0], priv->DefaultInitialGain[1],
   priv->DefaultInitialGain[2], priv->DefaultInitialGain[3]);

 priv->framesync = rtl92e_readb(dev, rOFDM0_RxDetector3);
 priv->framesyncC34 = rtl92e_readl(dev, rOFDM0_RxDetector2);
 RT_TRACE(COMP_INIT, "Default framesync (0x%x) = 0x%x\n",
  rOFDM0_RxDetector3, priv->framesync);
 priv->SifsTime = rtl92e_readw(dev, SIFS);
}
