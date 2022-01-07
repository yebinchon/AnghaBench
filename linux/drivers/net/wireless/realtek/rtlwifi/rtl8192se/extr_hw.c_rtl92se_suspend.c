
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_pci {int up_first_time; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;

void rtl92se_suspend(struct ieee80211_hw *hw)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 rtlpci->up_first_time = 1;
}
