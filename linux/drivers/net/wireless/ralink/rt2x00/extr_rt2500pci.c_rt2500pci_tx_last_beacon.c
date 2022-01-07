
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int CSR15 ;
 int CSR15_BEACON_SENT ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt2500pci_tx_last_beacon(struct ieee80211_hw *hw)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 u32 reg;

 reg = rt2x00mmio_register_read(rt2x00dev, CSR15);
 return rt2x00_get_field32(reg, CSR15_BEACON_SENT);
}
