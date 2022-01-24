#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlme_priv {int dummy; } ;
struct LED_871x {int bLedBlinkInProgress; int BlinkTimes; int bLedWPSBlinkInProgress; int /*<<< orphan*/  BlinkTimer; void* BlinkingLedState; void* CurrLedState; int /*<<< orphan*/  bLedOn; } ;
struct led_priv {struct LED_871x SwLed0; } ;
struct _adapter {struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef  enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct LED_871x*) ; 
 int /*<<< orphan*/  LED_BLINK_FASTER_INTERVAL_ALPHA ; 
 int /*<<< orphan*/  LED_BLINK_SCAN_INTERVAL_ALPHA ; 
 void* LED_BLINK_WPS ; 
#define  LED_CTL_LINK 138 
#define  LED_CTL_NO_LINK 137 
#define  LED_CTL_POWER_OFF 136 
#define  LED_CTL_POWER_ON 135 
#define  LED_CTL_RX 134 
#define  LED_CTL_SITE_SURVEY 133 
#define  LED_CTL_START_WPS 132 
#define  LED_CTL_START_WPS_BOTTON 131 
#define  LED_CTL_STOP_WPS 130 
#define  LED_CTL_STOP_WPS_FAIL 129 
#define  LED_CTL_TX 128 
 void* LED_STATE_OFF ; 
 void* LED_STATE_ON ; 
 void* LED_TXRX_BLINK ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,struct LED_871x*) ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct _adapter *padapter,
			      enum LED_CTL_MODE LedAction)
{
	struct led_priv	*ledpriv = &padapter->ledpriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct LED_871x *pLed = &ledpriv->SwLed0;

	switch (LedAction) {
	case LED_CTL_POWER_ON:
	case LED_CTL_NO_LINK:
	case LED_CTL_LINK:	/*solid blue*/
	case LED_CTL_SITE_SURVEY:
		if (FUNC0(pLed))
			return;
		pLed->CurrLedState = LED_STATE_ON;
		pLed->BlinkingLedState = LED_STATE_ON;
		pLed->bLedBlinkInProgress = false;
		FUNC4(&pLed->BlinkTimer, jiffies + FUNC5(0));
		break;
	case LED_CTL_TX:
	case LED_CTL_RX:
		if (!pLed->bLedBlinkInProgress &&
		    FUNC2(pmlmepriv, _FW_LINKED)) {
			if (FUNC0(pLed))
				return;
			pLed->bLedBlinkInProgress = true;
			pLed->CurrLedState = LED_TXRX_BLINK;
			pLed->BlinkTimes = 2;
			if (pLed->bLedOn)
				pLed->BlinkingLedState = LED_STATE_OFF;
			else
				pLed->BlinkingLedState = LED_STATE_ON;
			FUNC4(&pLed->BlinkTimer, jiffies +
				  FUNC5(LED_BLINK_FASTER_INTERVAL_ALPHA));
		}
		break;
	case LED_CTL_START_WPS: /*wait until xinpin finish*/
	case LED_CTL_START_WPS_BOTTON:
		if (!pLed->bLedWPSBlinkInProgress) {
			if (pLed->bLedBlinkInProgress) {
				FUNC3(&pLed->BlinkTimer);
				pLed->bLedBlinkInProgress = false;
			}
			pLed->bLedWPSBlinkInProgress = true;
			pLed->CurrLedState = LED_BLINK_WPS;
			if (pLed->bLedOn)
				pLed->BlinkingLedState = LED_STATE_OFF;
			else
				pLed->BlinkingLedState = LED_STATE_ON;
			FUNC4(&pLed->BlinkTimer, jiffies +
				  FUNC5(LED_BLINK_SCAN_INTERVAL_ALPHA));
		}
		break;
	case LED_CTL_STOP_WPS_FAIL:
	case LED_CTL_STOP_WPS:
		if (pLed->bLedWPSBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedWPSBlinkInProgress = false;
		}
		pLed->CurrLedState = LED_STATE_ON;
		pLed->BlinkingLedState = LED_STATE_ON;
		FUNC4(&pLed->BlinkTimer,
			  jiffies + FUNC5(0));
		break;
	case LED_CTL_POWER_OFF:
		pLed->CurrLedState = LED_STATE_OFF;
		pLed->BlinkingLedState = LED_STATE_OFF;
		if (pLed->bLedBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedBlinkInProgress = false;
		}
		if (pLed->bLedWPSBlinkInProgress) {
			FUNC3(&pLed->BlinkTimer);
			pLed->bLedWPSBlinkInProgress = false;
		}
		FUNC1(padapter, pLed);
		break;
	default:
		break;
	}
}