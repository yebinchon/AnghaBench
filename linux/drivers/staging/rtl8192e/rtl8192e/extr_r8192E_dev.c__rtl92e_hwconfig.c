
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r8192_priv {scalar_t__ rf_type; int ShortRetryLimit; int LongRetryLimit; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 int BW_OPMODE ;
 int BW_OPMODE_20MHZ ;
 int BW_OPMODE_5G ;
 int RATE_ALL_CCK ;
 int RATE_ALL_OFDM_1SS ;
 int RATE_ALL_OFDM_2SS ;
 int RATE_ALL_OFDM_AG ;
 int RATR0 ;
 int RETRY_LIMIT ;
 int RETRY_LIMIT_LONG_SHIFT ;
 int RETRY_LIMIT_SHORT_SHIFT ;
 scalar_t__ RF_1T2R ;
 int RRSR ;
 int UFWP ;






 int rtl92e_readb (struct net_device*,int) ;
 int rtl92e_writeb (struct net_device*,int ,int) ;
 int rtl92e_writel (struct net_device*,int ,int) ;
 int rtl92e_writew (struct net_device*,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_hwconfig(struct net_device *dev)
{
 u32 regRATR = 0, regRRSR = 0;
 u8 regBwOpMode = 0, regTmp = 0;
 struct r8192_priv *priv = rtllib_priv(dev);

 switch (priv->rtllib->mode) {
 case 131:
  regBwOpMode = BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_CCK;
  regRRSR = RATE_ALL_CCK;
  break;
 case 133:
  regBwOpMode = BW_OPMODE_5G | BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_OFDM_AG;
  regRRSR = RATE_ALL_OFDM_AG;
  break;
 case 130:
  regBwOpMode = BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  break;
 case 132:
 case 129:
  regBwOpMode = BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG |
     RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
  regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  break;
 case 128:
  regBwOpMode = BW_OPMODE_5G;
  regRATR = RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS |
     RATE_ALL_OFDM_2SS;
  regRRSR = RATE_ALL_OFDM_AG;
  break;
 default:
  regBwOpMode = BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  break;
 }

 rtl92e_writeb(dev, BW_OPMODE, regBwOpMode);
 {
  u32 ratr_value;

  ratr_value = regRATR;
  if (priv->rf_type == RF_1T2R)
   ratr_value &= ~(RATE_ALL_OFDM_2SS);
  rtl92e_writel(dev, RATR0, ratr_value);
  rtl92e_writeb(dev, UFWP, 1);
 }
 regTmp = rtl92e_readb(dev, 0x313);
 regRRSR = ((regTmp) << 24) | (regRRSR & 0x00ffffff);
 rtl92e_writel(dev, RRSR, regRRSR);

 rtl92e_writew(dev, RETRY_LIMIT,
        priv->ShortRetryLimit << RETRY_LIMIT_SHORT_SHIFT |
        priv->LongRetryLimit << RETRY_LIMIT_LONG_SHIFT);
}
