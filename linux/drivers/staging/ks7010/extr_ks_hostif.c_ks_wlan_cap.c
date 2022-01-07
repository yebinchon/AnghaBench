
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ preamble; scalar_t__ phy_type; } ;
struct ks_wlan_private {TYPE_1__ reg; } ;
typedef int __le16 ;


 scalar_t__ D_11B_ONLY_MODE ;
 scalar_t__ SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_DSSS_OFDM ;
 int WLAN_CAPABILITY_PBCC ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_SHORT_SLOT_TIME ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static __le16 ks_wlan_cap(struct ks_wlan_private *priv)
{
 u16 capability = 0x0000;

 if (priv->reg.preamble == SHORT_PREAMBLE)
  capability |= WLAN_CAPABILITY_SHORT_PREAMBLE;

 capability &= ~(WLAN_CAPABILITY_PBCC);

 if (priv->reg.phy_type != D_11B_ONLY_MODE) {
  capability |= WLAN_CAPABILITY_SHORT_SLOT_TIME;
  capability &= ~(WLAN_CAPABILITY_DSSS_OFDM);
 }

 return cpu_to_le16(capability);
}
