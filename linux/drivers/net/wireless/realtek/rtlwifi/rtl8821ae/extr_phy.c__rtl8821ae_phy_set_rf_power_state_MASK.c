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
struct rtl_ps_ctl {int rfpwr_state; int reg_rfps_level; int /*<<< orphan*/  rfoff_reason; scalar_t__ last_awake_jiffies; scalar_t__ last_sleep_jiffies; } ;
struct rtl_priv {TYPE_3__* cfg; } ;
struct TYPE_4__ {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_pci_priv {TYPE_1__ dev; } ;
struct rtl_mac {int /*<<< orphan*/  link_state; } ;
struct rtl8192_tx_ring {int /*<<< orphan*/  queue; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_WARNING ; 
#define  ERFOFF 129 
#define  ERFON 128 
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
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC7 (struct rtl_priv*) ; 
 struct rtl_pci_priv* FUNC8 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int FUNC11 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC12 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static bool FUNC19(struct ieee80211_hw *hw,
					      enum rf_pwrstate rfpwr_state)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_pci_priv *pcipriv = FUNC8(hw);
	struct rtl_mac *mac = FUNC7(FUNC9(hw));
	struct rtl_ps_ctl *ppsc = FUNC12(FUNC9(hw));
	bool bresult = true;
	u8 i, queue_id;
	struct rtl8192_tx_ring *ring = NULL;

	switch (rfpwr_state) {
	case ERFON:
		if ((ppsc->rfpwr_state == ERFOFF) &&
		    FUNC1(ppsc, RT_RF_OFF_LEVL_HALT_NIC)) {
			bool rtstatus = false;
			u32 initializecount = 0;

			do {
				initializecount++;
				FUNC3(rtlpriv, COMP_RF, DBG_DMESG,
					 "IPS Set eRf nic enable\n");
				rtstatus = FUNC11(hw);
			} while (!rtstatus && (initializecount < 10));
			FUNC0(ppsc,
					  RT_RF_OFF_LEVL_HALT_NIC);
		} else {
			FUNC3(rtlpriv, COMP_RF, DBG_DMESG,
				 "Set ERFON sleeped:%d ms\n",
				  FUNC4(jiffies -
						   ppsc->
						   last_sleep_jiffies));
			ppsc->last_awake_jiffies = jiffies;
			FUNC6(hw);
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
			if (queue_id == BEACON_QUEUE ||
			    FUNC13(&ring->queue) == 0) {
				queue_id++;
				continue;
			} else {
				FUNC3(rtlpriv, COMP_ERR, DBG_WARNING,
					 "eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\n",
					 (i + 1), queue_id,
					 FUNC13(&ring->queue));

				FUNC18(10);
				i++;
			}
			if (i >= MAX_DOZE_WAITING_TIMES_9x) {
				FUNC3(rtlpriv, COMP_ERR, DBG_WARNING,
					 "\n ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\n",
					  MAX_DOZE_WAITING_TIMES_9x,
					  queue_id,
					  FUNC13(&ring->queue));
				break;
			}
		}

		if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC) {
			FUNC3(rtlpriv, COMP_RF, DBG_DMESG,
				 "IPS Set eRf nic disable\n");
			FUNC10(hw);
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
	default:
		FUNC5("switch case %#x not processed\n",
		       rfpwr_state);
		bresult = false;
		break;
	}
	if (bresult)
		ppsc->rfpwr_state = rfpwr_state;
	return bresult;
}