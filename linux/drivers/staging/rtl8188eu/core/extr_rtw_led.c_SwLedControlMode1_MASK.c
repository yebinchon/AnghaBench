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
struct TYPE_2__ {int /*<<< orphan*/  bBusyTraffic; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct LED_871x {int bLedNoLinkBlinkInProgress; int bLedLinkBlinkInProgress; int bLedBlinkInProgress; int bLedScanBlinkInProgress; int BlinkTimes; int bLedWPSBlinkInProgress; void* CurrLedState; int /*<<< orphan*/  BlinkTimer; void* BlinkingLedState; int /*<<< orphan*/  bLedOn; } ;
struct led_priv {struct LED_871x sw_led; } ;
struct adapter {struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef  enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct LED_871x*) ; 
 int /*<<< orphan*/  LED_BLINK_FASTER_INTERVAL_ALPHA ; 
 int /*<<< orphan*/  LED_BLINK_LINK_INTERVAL_ALPHA ; 
 void* LED_BLINK_NORMAL ; 
 int /*<<< orphan*/  LED_BLINK_NO_LINK_INTERVAL_ALPHA ; 
 void* LED_BLINK_SCAN ; 
 int /*<<< orphan*/  LED_BLINK_SCAN_INTERVAL_ALPHA ; 
 void* LED_BLINK_SLOWLY ; 
 void* LED_BLINK_TXRX ; 
 void* LED_BLINK_WPS ; 
 void* LED_BLINK_WPS_STOP ; 
 int /*<<< orphan*/  LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA ; 
#define  LED_CTL_LINK 139 
#define  LED_CTL_NO_LINK 138 
#define  LED_CTL_POWER_OFF 137 
#define  LED_CTL_POWER_ON 136 
#define  LED_CTL_RX 135 
#define  LED_CTL_SITE_SURVEY 134 
#define  LED_CTL_START_TO_LINK 133 
#define  LED_CTL_START_WPS 132 
#define  LED_CTL_START_WPS_BOTTON 131 
#define  LED_CTL_STOP_WPS 130 
#define  LED_CTL_STOP_WPS_FAIL 129 
#define  LED_CTL_TX 128 
 void* RTW_LED_OFF ; 
 void* RTW_LED_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl8712_led_c_ ; 
 int /*<<< orphan*/  FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,struct LED_871x*) ; 

__attribute__((used)) static void FUNC7(struct adapter *padapter, enum LED_CTL_MODE LedAction)
{
	struct led_priv *ledpriv = &padapter->ledpriv;
	struct LED_871x *pLed = &ledpriv->sw_led;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	switch (LedAction) {
	case LED_CTL_POWER_ON:
	case LED_CTL_START_TO_LINK:
	case LED_CTL_NO_LINK:
		if (pLed->bLedNoLinkBlinkInProgress)
			break;
		if (pLed->CurrLedState == LED_BLINK_SCAN ||
		    FUNC0(pLed))
			return;
		if (pLed->bLedLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedLinkBlinkInProgress = false;
		}
		if (pLed->bLedBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedBlinkInProgress = false;
		}
		pLed->bLedNoLinkBlinkInProgress = true;
		pLed->CurrLedState = LED_BLINK_SLOWLY;
		if (pLed->bLedOn)
			pLed->BlinkingLedState = RTW_LED_OFF;
		else
			pLed->BlinkingLedState = RTW_LED_ON;
		FUNC4(&pLed->BlinkTimer, jiffies +
			  FUNC5(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
		break;
	case LED_CTL_LINK:
		if (pLed->bLedLinkBlinkInProgress)
			break;
		if (pLed->CurrLedState == LED_BLINK_SCAN ||
		    FUNC0(pLed))
			return;
		if (pLed->bLedNoLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedNoLinkBlinkInProgress = false;
		}
		if (pLed->bLedBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedBlinkInProgress = false;
		}
		pLed->bLedLinkBlinkInProgress = true;
		pLed->CurrLedState = LED_BLINK_NORMAL;
		if (pLed->bLedOn)
			pLed->BlinkingLedState = RTW_LED_OFF;
		else
			pLed->BlinkingLedState = RTW_LED_ON;
		FUNC4(&pLed->BlinkTimer, jiffies +
			  FUNC5(LED_BLINK_LINK_INTERVAL_ALPHA));
		break;
	case LED_CTL_SITE_SURVEY:
		if (pmlmepriv->LinkDetectInfo.bBusyTraffic &&
		    FUNC2(pmlmepriv, _FW_LINKED))
			break;
		if (pLed->bLedScanBlinkInProgress)
			break;
		if (FUNC0(pLed))
			return;
		if (pLed->bLedNoLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedNoLinkBlinkInProgress = false;
		}
		if (pLed->bLedLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedLinkBlinkInProgress = false;
		}
		if (pLed->bLedBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedBlinkInProgress = false;
		}
		pLed->bLedScanBlinkInProgress = true;
		pLed->CurrLedState = LED_BLINK_SCAN;
		pLed->BlinkTimes = 24;
		if (pLed->bLedOn)
			pLed->BlinkingLedState = RTW_LED_OFF;
		else
			pLed->BlinkingLedState = RTW_LED_ON;
		FUNC4(&pLed->BlinkTimer, jiffies +
			  FUNC5(LED_BLINK_SCAN_INTERVAL_ALPHA));
		break;
	case LED_CTL_TX:
	case LED_CTL_RX:
		if (pLed->bLedBlinkInProgress)
			break;
		if (pLed->CurrLedState == LED_BLINK_SCAN ||
		    FUNC0(pLed))
			return;
		if (pLed->bLedNoLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedNoLinkBlinkInProgress = false;
		}
		if (pLed->bLedLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedLinkBlinkInProgress = false;
		}
		pLed->bLedBlinkInProgress = true;
		pLed->CurrLedState = LED_BLINK_TXRX;
		pLed->BlinkTimes = 2;
		if (pLed->bLedOn)
			pLed->BlinkingLedState = RTW_LED_OFF;
		else
			pLed->BlinkingLedState = RTW_LED_ON;
		FUNC4(&pLed->BlinkTimer, jiffies +
			  FUNC5(LED_BLINK_FASTER_INTERVAL_ALPHA));
		break;
	case LED_CTL_START_WPS: /* wait until xinpin finish */
	case LED_CTL_START_WPS_BOTTON:
		if (pLed->bLedWPSBlinkInProgress)
			break;
		if (pLed->bLedNoLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedNoLinkBlinkInProgress = false;
		}
		if (pLed->bLedLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedLinkBlinkInProgress = false;
		}
		if (pLed->bLedBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedBlinkInProgress = false;
		}
		if (pLed->bLedScanBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedScanBlinkInProgress = false;
		}
		pLed->bLedWPSBlinkInProgress = true;
		pLed->CurrLedState = LED_BLINK_WPS;
		if (pLed->bLedOn)
			pLed->BlinkingLedState = RTW_LED_OFF;
		else
			pLed->BlinkingLedState = RTW_LED_ON;
		FUNC4(&pLed->BlinkTimer, jiffies +
			  FUNC5(LED_BLINK_SCAN_INTERVAL_ALPHA));
		break;
	case LED_CTL_STOP_WPS:
		if (pLed->bLedNoLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedNoLinkBlinkInProgress = false;
		}
		if (pLed->bLedLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedLinkBlinkInProgress = false;
		}
		if (pLed->bLedBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedBlinkInProgress = false;
		}
		if (pLed->bLedScanBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedScanBlinkInProgress = false;
		}
		if (pLed->bLedWPSBlinkInProgress)
			FUNC3(&pLed->BlinkTimer);
		else
			pLed->bLedWPSBlinkInProgress = true;
		pLed->CurrLedState = LED_BLINK_WPS_STOP;
		if (pLed->bLedOn) {
			pLed->BlinkingLedState = RTW_LED_OFF;
			FUNC4(&pLed->BlinkTimer, jiffies +
				  FUNC5(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
		} else {
			pLed->BlinkingLedState = RTW_LED_ON;
			FUNC4(&pLed->BlinkTimer,
				  jiffies + FUNC5(0));
		}
		break;
	case LED_CTL_STOP_WPS_FAIL:
		if (pLed->bLedWPSBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedWPSBlinkInProgress = false;
		}
		pLed->bLedNoLinkBlinkInProgress = true;
		pLed->CurrLedState = LED_BLINK_SLOWLY;
		if (pLed->bLedOn)
			pLed->BlinkingLedState = RTW_LED_OFF;
		else
			pLed->BlinkingLedState = RTW_LED_ON;
		FUNC4(&pLed->BlinkTimer, jiffies +
			  FUNC5(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
		break;
	case LED_CTL_POWER_OFF:
		pLed->CurrLedState = RTW_LED_OFF;
		pLed->BlinkingLedState = RTW_LED_OFF;
		if (pLed->bLedNoLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedNoLinkBlinkInProgress = false;
		}
		if (pLed->bLedLinkBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedLinkBlinkInProgress = false;
		}
		if (pLed->bLedBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedBlinkInProgress = false;
		}
		if (pLed->bLedWPSBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedWPSBlinkInProgress = false;
		}
		if (pLed->bLedScanBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedScanBlinkInProgress = false;
		}
		FUNC6(padapter, pLed);
		break;
	default:
		break;
	}

	FUNC1(_module_rtl8712_led_c_, _drv_info_,
		 ("Led %d\n", pLed->CurrLedState));
}