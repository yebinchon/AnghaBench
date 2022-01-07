
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8180_priv {int map; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ieee80211_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void rtl8180_remove(struct pci_dev *pdev)
{
 struct ieee80211_hw *dev = pci_get_drvdata(pdev);
 struct rtl8180_priv *priv;

 if (!dev)
  return;

 ieee80211_unregister_hw(dev);

 priv = dev->priv;

 pci_iounmap(pdev, priv->map);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 ieee80211_free_hw(dev);
}
