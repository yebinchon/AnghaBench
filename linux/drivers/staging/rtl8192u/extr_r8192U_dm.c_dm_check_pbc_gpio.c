
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int bpbc_pressed; } ;
struct net_device {int dummy; } ;


 int BIT (int) ;
 int COMP_IO ;
 int GPI ;
 int RT_TRACE (int ,char*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ,int*) ;

__attribute__((used)) static void dm_check_pbc_gpio(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 tmp1byte;

 read_nic_byte(dev, GPI, &tmp1byte);
 if (tmp1byte == 0xff)
  return;

 if (tmp1byte & BIT(6) || tmp1byte & BIT(0)) {



  RT_TRACE(COMP_IO, "CheckPbcGPIO - PBC is pressed\n");
  priv->bpbc_pressed = 1;
 }

}
