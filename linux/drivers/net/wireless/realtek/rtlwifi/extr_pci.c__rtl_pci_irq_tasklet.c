
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl_pci_tx_chk_waitq (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_pci_irq_tasklet(struct ieee80211_hw *hw)
{
 _rtl_pci_tx_chk_waitq(hw);
}
