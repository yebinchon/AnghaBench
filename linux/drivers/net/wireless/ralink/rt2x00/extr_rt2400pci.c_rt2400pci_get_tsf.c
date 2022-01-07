
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int CSR16 ;
 int CSR16_LOW_TSFTIMER ;
 int CSR17 ;
 int CSR17_HIGH_TSFTIMER ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;

__attribute__((used)) static u64 rt2400pci_get_tsf(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 u64 tsf;
 u32 reg;

 reg = rt2x00mmio_register_read(rt2x00dev, CSR17);
 tsf = (u64) rt2x00_get_field32(reg, CSR17_HIGH_TSFTIMER) << 32;
 reg = rt2x00mmio_register_read(rt2x00dev, CSR16);
 tsf |= rt2x00_get_field32(reg, CSR16_LOW_TSFTIMER);

 return tsf;
}
