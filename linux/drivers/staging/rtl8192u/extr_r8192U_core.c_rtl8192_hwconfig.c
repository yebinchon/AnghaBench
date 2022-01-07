
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r8192_priv {scalar_t__ rf_type; int ShortRetryLimit; int LongRetryLimit; TYPE_1__* ieee80211; } ;
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






 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int,int*) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

__attribute__((used)) static void rtl8192_hwconfig(struct net_device *dev)
{
 u32 regRATR = 0, regRRSR = 0;
 u8 regBwOpMode = 0, regTmp = 0;
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 ratr_value = 0;


 switch (priv->ieee80211->mode) {
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
  regBwOpMode = BW_OPMODE_20MHZ;
  regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG |
     RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
  regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
  break;
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
 }

 write_nic_byte(dev, BW_OPMODE, regBwOpMode);
 ratr_value = regRATR;
 if (priv->rf_type == RF_1T2R)
  ratr_value &= ~(RATE_ALL_OFDM_2SS);
 write_nic_dword(dev, RATR0, ratr_value);
 write_nic_byte(dev, UFWP, 1);
 read_nic_byte(dev, 0x313, &regTmp);
 regRRSR = ((regTmp) << 24) | (regRRSR & 0x00ffffff);
 write_nic_dword(dev, RRSR, regRRSR);


 write_nic_word(dev, RETRY_LIMIT,
         priv->ShortRetryLimit << RETRY_LIMIT_SHORT_SHIFT |
         priv->LongRetryLimit << RETRY_LIMIT_LONG_SHIFT);







}
