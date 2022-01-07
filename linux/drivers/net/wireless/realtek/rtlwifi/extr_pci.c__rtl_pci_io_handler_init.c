
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read32_sync; int read16_sync; int read8_sync; int write32_async; int write16_async; int write8_async; struct device* dev; } ;
struct rtl_priv {TYPE_1__ io; } ;
struct ieee80211_hw {int dummy; } ;
struct device {int dummy; } ;


 int pci_read16_sync ;
 int pci_read32_sync ;
 int pci_read8_sync ;
 int pci_write16_async ;
 int pci_write32_async ;
 int pci_write8_async ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_pci_io_handler_init(struct device *dev,
         struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->io.dev = dev;

 rtlpriv->io.write8_async = pci_write8_async;
 rtlpriv->io.write16_async = pci_write16_async;
 rtlpriv->io.write32_async = pci_write32_async;

 rtlpriv->io.read8_sync = pci_read8_sync;
 rtlpriv->io.read16_sync = pci_read16_sync;
 rtlpriv->io.read32_sync = pci_read32_sync;
}
