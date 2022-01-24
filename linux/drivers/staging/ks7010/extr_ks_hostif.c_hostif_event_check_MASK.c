#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int* buff; size_t qtail; } ;
struct ks_wlan_private {TYPE_1__ hostt; int /*<<< orphan*/  confirm_wait; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
#define  HIF_ADH_SET2_CONF 147 
#define  HIF_ADH_SET_CONF 146 
#define  HIF_AP_SET_CONF 145 
#define  HIF_ASSOC_INFO_IND 144 
#define  HIF_CONNECT_IND 143 
#define  HIF_DATA_IND 142 
#define  HIF_INFRA_SET2_CONF 141 
#define  HIF_INFRA_SET_CONF 140 
#define  HIF_MIB_GET_CONF 139 
#define  HIF_MIB_SET_CONF 138 
#define  HIF_MIC_FAILURE_CONF 137 
#define  HIF_PHY_INFO_CONF 136 
#define  HIF_PHY_INFO_IND 135 
#define  HIF_POWER_MGMT_CONF 134 
#define  HIF_PS_ADH_SET_CONF 133 
#define  HIF_SCAN_CONF 132 
#define  HIF_SCAN_IND 131 
#define  HIF_SLEEP_CONF 130 
#define  HIF_START_CONF 129 
#define  HIF_STOP_CONF 128 
 int SME_EVENT_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static
void FUNC19(struct ks_wlan_private *priv)
{
	u16 event;

	event = FUNC1(priv);
	switch (event) {
	case HIF_DATA_IND:
		FUNC6(priv);
		break;
	case HIF_MIB_GET_CONF:
		FUNC8(priv);
		break;
	case HIF_MIB_SET_CONF:
		FUNC9(priv);
		break;
	case HIF_POWER_MGMT_CONF:
		FUNC12(priv);
		break;
	case HIF_SLEEP_CONF:
		FUNC15(priv);
		break;
	case HIF_START_CONF:
		FUNC16(priv);
		break;
	case HIF_CONNECT_IND:
		FUNC5(priv);
		break;
	case HIF_STOP_CONF:
		FUNC17(priv);
		break;
	case HIF_PS_ADH_SET_CONF:
		FUNC13(priv);
		break;
	case HIF_INFRA_SET_CONF:
	case HIF_INFRA_SET2_CONF:
		FUNC7(priv);
		break;
	case HIF_ADH_SET_CONF:
	case HIF_ADH_SET2_CONF:
		FUNC2(priv);
		break;
	case HIF_ASSOC_INFO_IND:
		FUNC3(priv);
		break;
	case HIF_MIC_FAILURE_CONF:
		FUNC10(priv);
		break;
	case HIF_SCAN_CONF:
		FUNC4(priv);
		break;
	case HIF_PHY_INFO_CONF:
	case HIF_PHY_INFO_IND:
		FUNC11(priv);
		break;
	case HIF_SCAN_IND:
		FUNC14(priv);
		break;
	case HIF_AP_SET_CONF:
	default:
		FUNC18(priv->net_dev, "undefined event[%04X]\n", event);
		/* wake_up_all(&priv->confirm_wait); */
		FUNC0(&priv->confirm_wait);
		break;
	}

	/* add event to hostt buffer */
	priv->hostt.buff[priv->hostt.qtail] = event;
	priv->hostt.qtail = (priv->hostt.qtail + 1) % SME_EVENT_BUFF_SIZE;
}