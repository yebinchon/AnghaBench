
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int _rtl_pci_init_struct (struct ieee80211_hw*,struct pci_dev*) ;
 int _rtl_pci_init_trx_ring (struct ieee80211_hw*) ;
 int pr_err (char*) ;

__attribute__((used)) static int rtl_pci_init(struct ieee80211_hw *hw, struct pci_dev *pdev)
{
 int err;

 _rtl_pci_init_struct(hw, pdev);

 err = _rtl_pci_init_trx_ring(hw);
 if (err) {
  pr_err("tx ring initialization failed\n");
  return err;
 }

 return 0;
}
