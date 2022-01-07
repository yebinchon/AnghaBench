
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct rtl_ps_ctl {int rfpwr_state; int reg_rfps_level; int rfoff_reason; scalar_t__ last_awake_jiffies; scalar_t__ last_sleep_jiffies; } ;
struct rtl_priv {TYPE_3__* cfg; } ;
struct TYPE_4__ {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_pci_priv {TYPE_1__ dev; } ;
struct rtl_mac {int link_state; } ;
struct rtl8192_tx_ring {int queue; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* led_control ) (struct ieee80211_hw*,int ) ;} ;


 size_t BEACON_QUEUE ;
 int COMP_ERR ;
 int COMP_RF ;
 int DBG_DMESG ;
 int DBG_WARNING ;


 int LED_CTL_LINK ;
 int LED_CTL_NO_LINK ;
 int LED_CTL_POWER_OFF ;
 int MAC80211_LINKED ;
 size_t MAX_DOZE_WAITING_TIMES_9x ;
 int RF_CHANGE_BY_IPS ;
 size_t RTL_PCI_MAX_TX_QUEUE_COUNT ;
 int RT_CLEAR_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_IN_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int pr_err (char*,int) ;
 int rtl8821ae_phy_set_rf_on (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci_priv* rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_ps_disable_nic (struct ieee80211_hw*) ;
 int rtl_ps_enable_nic (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int skb_queue_len (int *) ;
 int stub1 (struct ieee80211_hw*,int ) ;
 int stub2 (struct ieee80211_hw*,int ) ;
 int stub3 (struct ieee80211_hw*,int ) ;
 int stub4 (struct ieee80211_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static bool _rtl8821ae_phy_set_rf_power_state(struct ieee80211_hw *hw,
           enum rf_pwrstate rfpwr_state)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci_priv *pcipriv = rtl_pcipriv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 bool bresult = 1;
 u8 i, queue_id;
 struct rtl8192_tx_ring *ring = ((void*)0);

 switch (rfpwr_state) {
 case 128:
  if ((ppsc->rfpwr_state == 129) &&
      RT_IN_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC)) {
   bool rtstatus = 0;
   u32 initializecount = 0;

   do {
    initializecount++;
    RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
      "IPS Set eRf nic enable\n");
    rtstatus = rtl_ps_enable_nic(hw);
   } while (!rtstatus && (initializecount < 10));
   RT_CLEAR_PS_LEVEL(ppsc,
       RT_RF_OFF_LEVL_HALT_NIC);
  } else {
   RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
     "Set ERFON sleeped:%d ms\n",
      jiffies_to_msecs(jiffies -
         ppsc->
         last_sleep_jiffies));
   ppsc->last_awake_jiffies = jiffies;
   rtl8821ae_phy_set_rf_on(hw);
  }
  if (mac->link_state == MAC80211_LINKED) {
   rtlpriv->cfg->ops->led_control(hw,
             LED_CTL_LINK);
  } else {
   rtlpriv->cfg->ops->led_control(hw,
             LED_CTL_NO_LINK);
  }
  break;
 case 129:
  for (queue_id = 0, i = 0;
       queue_id < RTL_PCI_MAX_TX_QUEUE_COUNT;) {
   ring = &pcipriv->dev.tx_ring[queue_id];
   if (queue_id == BEACON_QUEUE ||
       skb_queue_len(&ring->queue) == 0) {
    queue_id++;
    continue;
   } else {
    RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
      "eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\n",
      (i + 1), queue_id,
      skb_queue_len(&ring->queue));

    udelay(10);
    i++;
   }
   if (i >= MAX_DOZE_WAITING_TIMES_9x) {
    RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
      "\n ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\n",
       MAX_DOZE_WAITING_TIMES_9x,
       queue_id,
       skb_queue_len(&ring->queue));
    break;
   }
  }

  if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC) {
   RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
     "IPS Set eRf nic disable\n");
   rtl_ps_disable_nic(hw);
   RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
  } else {
   if (ppsc->rfoff_reason == RF_CHANGE_BY_IPS) {
    rtlpriv->cfg->ops->led_control(hw,
              LED_CTL_NO_LINK);
   } else {
    rtlpriv->cfg->ops->led_control(hw,
              LED_CTL_POWER_OFF);
   }
  }
  break;
 default:
  pr_err("switch case %#x not processed\n",
         rfpwr_state);
  bresult = 0;
  break;
 }
 if (bresult)
  ppsc->rfpwr_state = rfpwr_state;
 return bresult;
}
