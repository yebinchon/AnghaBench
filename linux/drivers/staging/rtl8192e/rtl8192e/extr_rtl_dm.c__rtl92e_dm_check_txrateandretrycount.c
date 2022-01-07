
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txretrycount; void* last_packet_rate; void* CurrentShowTxate; } ;
struct rtllib_device {TYPE_1__ softmac_stats; } ;
struct r8192_priv {struct rtllib_device* rtllib; } ;
struct net_device {int dummy; } ;


 int Current_Tx_Rate_Reg ;
 int Initial_Tx_Rate_Reg ;
 int Tx_Retry_Count_Reg ;
 void* rtl92e_readb (struct net_device*,int ) ;
 int rtl92e_readl (struct net_device*,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_check_txrateandretrycount(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rtllib_device *ieee = priv->rtllib;

 ieee->softmac_stats.CurrentShowTxate = rtl92e_readb(dev,
       Current_Tx_Rate_Reg);

 ieee->softmac_stats.last_packet_rate = rtl92e_readb(dev,
       Initial_Tx_Rate_Reg);

 ieee->softmac_stats.txretrycount = rtl92e_readl(dev,
       Tx_Retry_Count_Reg);
}
