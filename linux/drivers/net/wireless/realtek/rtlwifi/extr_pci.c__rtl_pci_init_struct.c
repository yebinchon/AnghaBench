
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lps_change_work; int irq_prepare_bcn_tasklet; int irq_tasklet; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct rtl_pci {int up_first_time; int being_init_adapter; int acm_method; struct pci_dev* pdev; } ;
struct rtl_mac {int beacon_interval; int current_ampdu_density; int current_ampdu_factor; int retry_short; int retry_long; scalar_t__ max_mss_density; scalar_t__ min_space_cfg; } ;
struct rtl_hal {struct ieee80211_hw* hw; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int EACMWAY2_SW ;
 int INIT_WORK (int *,int ) ;
 int _rtl_pci_init_trx_var (struct ieee80211_hw*) ;
 scalar_t__ _rtl_pci_irq_tasklet ;
 scalar_t__ _rtl_pci_prepare_bcn_tasklet ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 int rtl_lps_change_work_callback ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

__attribute__((used)) static void _rtl_pci_init_struct(struct ieee80211_hw *hw,
     struct pci_dev *pdev)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 rtlpci->up_first_time = 1;
 rtlpci->being_init_adapter = 0;

 rtlhal->hw = hw;
 rtlpci->pdev = pdev;


 _rtl_pci_init_trx_var(hw);


 mac->beacon_interval = 100;


 mac->min_space_cfg = 0;
 mac->max_mss_density = 0;

 mac->current_ampdu_density = 7;
 mac->current_ampdu_factor = 3;


 mac->retry_short = 7;
 mac->retry_long = 7;


 rtlpci->acm_method = EACMWAY2_SW;


 tasklet_init(&rtlpriv->works.irq_tasklet,
       (void (*)(unsigned long))_rtl_pci_irq_tasklet,
       (unsigned long)hw);
 tasklet_init(&rtlpriv->works.irq_prepare_bcn_tasklet,
       (void (*)(unsigned long))_rtl_pci_prepare_bcn_tasklet,
       (unsigned long)hw);
 INIT_WORK(&rtlpriv->works.lps_change_work,
    rtl_lps_change_work_callback);
}
