
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct rtl_pci {TYPE_1__* pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int IMR8190_DISABLED ;
 int REG_HIMR ;
 int REG_HIMRE ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;
 int synchronize_irq (int ) ;

void rtl92de_disable_interrupt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 rtl_write_dword(rtlpriv, REG_HIMR, IMR8190_DISABLED);
 rtl_write_dword(rtlpriv, REG_HIMRE, IMR8190_DISABLED);
 synchronize_irq(rtlpci->pdev->irq);
}
