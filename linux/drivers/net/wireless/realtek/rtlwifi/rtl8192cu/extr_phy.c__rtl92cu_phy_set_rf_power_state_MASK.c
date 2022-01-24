#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct rtl_ps_ctl {int rfpwr_state; void* last_sleep_jiffies; void* last_awake_jiffies; int reg_rfps_level; int /*<<< orphan*/  rfoff_reason; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct TYPE_6__ {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_pci_priv {TYPE_3__ dev; } ;
struct rtl_mac {int /*<<< orphan*/  link_state; } ;
struct rtl8192_tx_ring {int /*<<< orphan*/  queue; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_WARNING ; 
#define  ERFOFF 130 
#define  ERFON 129 
#define  ERFSLEEP 128 
 int /*<<< orphan*/  LED_CTL_LINK ; 
 int /*<<< orphan*/  LED_CTL_NO_LINK ; 
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 int /*<<< orphan*/  MAC80211_LINKED ; 
 size_t MAX_DOZE_WAITING_TIMES_9x ; 
 int /*<<< orphan*/  RF_CHANGE_BY_IPS ; 
 size_t RTL_PCI_MAX_TX_QUEUE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_ps_ctl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_ps_ctl*,int) ; 
 int RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_ps_ctl*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC8 (struct rtl_priv*) ; 
 struct rtl_pci_priv* FUNC9 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int FUNC12 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC13 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static bool FUNC20(struct ieee80211_hw *hw,
					    enum rf_pwrstate rfpwr_state)
{
	struct rtl_priv *rtlpriv = FUNC10(hw);
	struct rtl_pci_priv *pcipriv = FUNC9(hw);
	struct rtl_mac *mac = FUNC8(FUNC10(hw));
	struct rtl_ps_ctl *ppsc = FUNC13(FUNC10(hw));
	bool bresult = true;
	u8 i, queue_id;
	struct rtl8192_tx_ring *ring = NULL;

	switch (rfpwr_state) {
	case ERFON:
		if ((ppsc->rfpwr_state == ERFOFF) &&
		    FUNC1(ppsc, RT_RF_OFF_LEVL_HALT_NIC)) {
			bool rtstatus;
			u32 init_count = 0;

			do {
				init_count++;
				FUNC3(rtlpriv, COMP_RF, DBG_DMESG,
					 "IPS Set eRf nic enable\n");
				rtstatus = FUNC12(hw);
			} while (!rtstatus && (init_count < 10));
			FUNC0(ppsc,
					  RT_RF_OFF_LEVL_HALT_NIC);
		} else {
			FUNC3(rtlpriv, COMP_RF, DBG_DMESG,
				 "Set ERFON sleeped:%d ms\n",
				 FUNC5(jiffies -
						  ppsc->last_sleep_jiffies));
			ppsc->last_awake_jiffies = jiffies;
			FUNC7(hw);
		}
		if (mac->link_state == MAC80211_LINKED) {
			rtlpriv->cfg->ops->led_control(hw,
						       LED_CTL_LINK);
		} else {
			rtlpriv->cfg->ops->led_control(hw,
						       LED_CTL_NO_LINK);
		}
		break;
	case ERFOFF:
		for (queue_id = 0, i = 0;
		     queue_id < RTL_PCI_MAX_TX_QUEUE_COUNT;) {
			ring = &pcipriv->dev.tx_ring[queue_id];
			if (FUNC14(&ring->queue) == 0 ||
				queue_id == BEACON_QUEUE) {
				queue_id++;
				continue;
			} else {
				FUNC3(rtlpriv, COMP_ERR, DBG_WARNING,
					 "eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\n",
					 i + 1,
					 queue_id,
					 FUNC14(&ring->queue));
				FUNC19(10);
				i++;
			}
			if (i >= MAX_DOZE_WAITING_TIMES_9x) {
				FUNC3(rtlpriv, COMP_ERR, DBG_WARNING,
					 "ERFOFF: %d times TcbBusyQueue[%d] = %d !\n",
					 MAX_DOZE_WAITING_TIMES_9x,
					 queue_id,
					 FUNC14(&ring->queue));
				break;
			}
		}
		if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC) {
			FUNC3(rtlpriv, COMP_RF, DBG_DMESG,
				 "IPS Set eRf nic disable\n");
			FUNC11(hw);
			FUNC2(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
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
	case ERFSLEEP:
		if (ppsc->rfpwr_state == ERFOFF)
			return false;
		for (queue_id = 0, i = 0;
		     queue_id < RTL_PCI_MAX_TX_QUEUE_COUNT;) {
			ring = &pcipriv->dev.tx_ring[queue_id];
			if (FUNC14(&ring->queue) == 0) {
				queue_id++;
				continue;
			} else {
				FUNC3(rtlpriv, COMP_ERR, DBG_WARNING,
					 "eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\n",
					 i + 1, queue_id,
					 FUNC14(&ring->queue));
				FUNC19(10);
				i++;
			}
			if (i >= MAX_DOZE_WAITING_TIMES_9x) {
				FUNC3(rtlpriv, COMP_ERR, DBG_WARNING,
					 "ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\n",
					 MAX_DOZE_WAITING_TIMES_9x,
					 queue_id,
					 FUNC14(&ring->queue));
				break;
			}
		}
		FUNC3(rtlpriv, COMP_RF, DBG_DMESG,
			 "Set ERFSLEEP awaked:%d ms\n",
			 FUNC5(jiffies - ppsc->last_awake_jiffies));
		ppsc->last_sleep_jiffies = jiffies;
		FUNC4(hw);
		break;
	default:
		FUNC6("switch case %#x not processed\n",
		       rfpwr_state);
		bresult = false;
		break;
	}
	if (bresult)
		ppsc->rfpwr_state = rfpwr_state;
	return bresult;
}