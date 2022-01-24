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
typedef  int u8 ;
struct mlme_priv {int fw_state; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
struct LED_871x {scalar_t__ BlinkingLedState; scalar_t__ BlinkTimes; int CurrLedState; int bLedBlinkInProgress; int /*<<< orphan*/  BlinkTimer; scalar_t__ bLedOn; struct _adapter* padapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_BLINK_LONG_INTERVAL ; 
#define  LED_BLINK_NORMAL 131 
 int /*<<< orphan*/  LED_BLINK_NORMAL_INTERVAL ; 
#define  LED_BLINK_SLOWLY 130 
 int /*<<< orphan*/  LED_BLINK_SLOWLY_INTERVAL ; 
#define  LED_BLINK_StartToBlink 129 
#define  LED_BLINK_WPS 128 
 scalar_t__ LED_STATE_OFF ; 
 scalar_t__ LED_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,struct LED_871x*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,struct LED_871x*) ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct LED_871x *pLed)
{
	struct _adapter *padapter = pLed->padapter;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	u8 bStopBlinking = false;

	/* Change LED according to BlinkingLedState specified. */
	if (pLed->BlinkingLedState == LED_STATE_ON)
		FUNC1(padapter, pLed);
	else
		FUNC0(padapter, pLed);
	/* Determine if we shall change LED state again. */
	pLed->BlinkTimes--;
	switch (pLed->CurrLedState) {
	case LED_BLINK_NORMAL:
		if (pLed->BlinkTimes == 0)
			bStopBlinking = true;
		break;
	case LED_BLINK_StartToBlink:
		if (FUNC2(pmlmepriv, _FW_LINKED) &&
		    (pmlmepriv->fw_state & WIFI_STATION_STATE))
			bStopBlinking = true;
		if (FUNC2(pmlmepriv, _FW_LINKED) &&
		    ((pmlmepriv->fw_state & WIFI_ADHOC_STATE) ||
		    (pmlmepriv->fw_state & WIFI_ADHOC_MASTER_STATE)))
			bStopBlinking = true;
		else if (pLed->BlinkTimes == 0)
			bStopBlinking = true;
		break;
	case LED_BLINK_WPS:
		if (pLed->BlinkTimes == 0)
			bStopBlinking = true;
		break;
	default:
		bStopBlinking = true;
		break;
	}
	if (bStopBlinking) {
		if (FUNC2(pmlmepriv, _FW_LINKED) &&
		    !pLed->bLedOn)
			FUNC1(padapter, pLed);
		else if (FUNC2(pmlmepriv, _FW_LINKED) &&  pLed->bLedOn)
			FUNC0(padapter, pLed);
		pLed->BlinkTimes = 0;
		pLed->bLedBlinkInProgress = false;
	} else {
		/* Assign LED state to toggle. */
		if (pLed->BlinkingLedState == LED_STATE_ON)
			pLed->BlinkingLedState = LED_STATE_OFF;
		else
			pLed->BlinkingLedState = LED_STATE_ON;

		/* Schedule a timer to toggle LED state. */
		switch (pLed->CurrLedState) {
		case LED_BLINK_NORMAL:
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_NORMAL_INTERVAL));
			break;
		case LED_BLINK_SLOWLY:
		case LED_BLINK_StartToBlink:
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_SLOWLY_INTERVAL));
			break;
		case LED_BLINK_WPS:
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_LONG_INTERVAL));
			break;
		default:
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_SLOWLY_INTERVAL));
			break;
		}
	}
}