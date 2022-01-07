
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int txretrycount; int last_packet_rate; int CurrentShowTxate; } ;
struct ieee80211_device {TYPE_1__ softmac_stats; } ;


 int CURRENT_TX_RATE_REG ;
 int INITIAL_TX_RATE_REG ;
 int TX_RETRY_COUNT_REG ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ,int *) ;
 int read_nic_dword (struct net_device*,int ,int *) ;

__attribute__((used)) static void dm_check_txrateandretrycount(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;


 read_nic_byte(dev, CURRENT_TX_RATE_REG, &ieee->softmac_stats.CurrentShowTxate);



 read_nic_byte(dev, INITIAL_TX_RATE_REG, &ieee->softmac_stats.last_packet_rate);


 read_nic_dword(dev, TX_RETRY_COUNT_REG, &ieee->softmac_stats.txretrycount);
}
