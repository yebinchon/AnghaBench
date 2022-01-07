
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rtl_wq; int lps_change_work; int irq_tasklet; } ;
struct rtl_priv {TYPE_2__ works; } ;
struct rtl_pci {TYPE_1__* pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int irq; } ;


 int _rtl_pci_deinit_trx_ring (struct ieee80211_hw*) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void rtl_pci_deinit(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 _rtl_pci_deinit_trx_ring(hw);

 synchronize_irq(rtlpci->pdev->irq);
 tasklet_kill(&rtlpriv->works.irq_tasklet);
 cancel_work_sync(&rtlpriv->works.lps_change_work);

 flush_workqueue(rtlpriv->works.rtl_wq);
 destroy_workqueue(rtlpriv->works.rtl_wq);
}
