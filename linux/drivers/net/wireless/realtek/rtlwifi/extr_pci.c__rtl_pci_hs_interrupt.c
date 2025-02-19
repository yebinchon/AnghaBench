
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {TYPE_1__* cfg; } ;
struct rtl_pci {int sys_irq_mask; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int * maps; } ;


 size_t MAC_HSISR ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl_pci_hs_interrupt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 rtl_write_byte(rtlpriv, rtlpriv->cfg->maps[MAC_HSISR],
         rtl_read_byte(rtlpriv, rtlpriv->cfg->maps[MAC_HSISR]) |
         rtlpci->sys_irq_mask);
}
