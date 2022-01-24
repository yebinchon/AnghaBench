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
struct mlme_priv {int dummy; } ;
struct LED_871x {scalar_t__ BlinkingLedState; int bSWLedCtrl; int CurrLedState; int bLedLinkBlinkInProgress; int bLedNoLinkBlinkInProgress; int bLedScanBlinkInProgress; int bLedBlinkInProgress; int bLedWPSBlinkInProgress; int /*<<< orphan*/  BlinkTimer; scalar_t__ bLedOn; int /*<<< orphan*/  BlinkTimes; struct _adapter* padapter; } ;
struct led_priv {struct LED_871x SwLed1; } ;
struct eeprom_priv {scalar_t__ CustomerID; } ;
struct _adapter {struct eeprom_priv eeprompriv; struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_BLINK_FASTER_INTERVAL_ALPHA ; 
 int /*<<< orphan*/  LED_BLINK_LINK_INTERVAL_ALPHA ; 
#define  LED_BLINK_NORMAL 133 
 int /*<<< orphan*/  LED_BLINK_NO_LINK_INTERVAL_ALPHA ; 
 int /*<<< orphan*/  LED_BLINK_SCAN_INTERVAL_ALPHA ; 
#define  LED_BLINK_SLOWLY 132 
#define  LED_BLINK_WPS 131 
#define  LED_BLINK_WPS_STOP 130 
 int /*<<< orphan*/  LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA ; 
#define  LED_SCAN_BLINK 129 
 void* LED_STATE_OFF ; 
 scalar_t__ LED_STATE_ON ; 
#define  LED_TXRX_BLINK 128 
 scalar_t__ RT_CID_819x_CAMEO ; 
 scalar_t__ RT_CID_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,struct LED_871x*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,struct LED_871x*) ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct LED_871x *pLed)
{
	struct _adapter *padapter = pLed->padapter;
	struct led_priv *ledpriv = &padapter->ledpriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct eeprom_priv *peeprompriv = &padapter->eeprompriv;
	struct LED_871x *pLed1 = &ledpriv->SwLed1;
	u8 bStopBlinking = false;

	if (peeprompriv->CustomerID == RT_CID_819x_CAMEO)
		pLed = &ledpriv->SwLed1;
	/* Change LED according to BlinkingLedState specified. */
	if (pLed->BlinkingLedState == LED_STATE_ON)
		FUNC1(padapter, pLed);
	else
		FUNC0(padapter, pLed);
	if (peeprompriv->CustomerID == RT_CID_DEFAULT) {
		if (FUNC2(pmlmepriv, _FW_LINKED)) {
			if (!pLed1->bSWLedCtrl) {
				FUNC1(padapter, pLed1);
				pLed1->bSWLedCtrl = true;
			} else if (!pLed1->bLedOn) {
				FUNC1(padapter, pLed1);
			}
		} else {
			if (!pLed1->bSWLedCtrl) {
				FUNC0(padapter, pLed1);
				pLed1->bSWLedCtrl = true;
			} else if (pLed1->bLedOn) {
				FUNC0(padapter, pLed1);
			}
		}
	}
	switch (pLed->CurrLedState) {
	case LED_BLINK_SLOWLY:
		if (pLed->bLedOn)
			pLed->BlinkingLedState = LED_STATE_OFF;
		else
			pLed->BlinkingLedState = LED_STATE_ON;
		FUNC3(&pLed->BlinkTimer, jiffies +
			  FUNC4(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
		break;
	case LED_BLINK_NORMAL:
		if (pLed->bLedOn)
			pLed->BlinkingLedState = LED_STATE_OFF;
		else
			pLed->BlinkingLedState = LED_STATE_ON;
		FUNC3(&pLed->BlinkTimer, jiffies +
			  FUNC4(LED_BLINK_LINK_INTERVAL_ALPHA));
		break;
	case LED_SCAN_BLINK:
		pLed->BlinkTimes--;
		if (pLed->BlinkTimes == 0)
			bStopBlinking = true;
		if (bStopBlinking) {
			if (FUNC2(pmlmepriv, _FW_LINKED)) {
				pLed->bLedLinkBlinkInProgress = true;
				pLed->CurrLedState = LED_BLINK_NORMAL;
				if (pLed->bLedOn)
					pLed->BlinkingLedState = LED_STATE_OFF;
				else
					pLed->BlinkingLedState = LED_STATE_ON;
				FUNC3(&pLed->BlinkTimer, jiffies +
					  FUNC4(LED_BLINK_LINK_INTERVAL_ALPHA));
			} else if (!FUNC2(pmlmepriv, _FW_LINKED)) {
				pLed->bLedNoLinkBlinkInProgress = true;
				pLed->CurrLedState = LED_BLINK_SLOWLY;
				if (pLed->bLedOn)
					pLed->BlinkingLedState = LED_STATE_OFF;
				else
					pLed->BlinkingLedState = LED_STATE_ON;
				FUNC3(&pLed->BlinkTimer, jiffies +
					  FUNC4(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
			}
			pLed->bLedScanBlinkInProgress = false;
		} else {
			if (pLed->bLedOn)
				pLed->BlinkingLedState = LED_STATE_OFF;
			else
				pLed->BlinkingLedState = LED_STATE_ON;
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_SCAN_INTERVAL_ALPHA));
		}
		break;
	case LED_TXRX_BLINK:
		pLed->BlinkTimes--;
		if (pLed->BlinkTimes == 0)
			bStopBlinking = true;
		if (bStopBlinking) {
			if (FUNC2(pmlmepriv, _FW_LINKED)) {
				pLed->bLedLinkBlinkInProgress = true;
				pLed->CurrLedState = LED_BLINK_NORMAL;
				if (pLed->bLedOn)
					pLed->BlinkingLedState = LED_STATE_OFF;
				else
					pLed->BlinkingLedState = LED_STATE_ON;
				FUNC3(&pLed->BlinkTimer, jiffies +
					  FUNC4(LED_BLINK_LINK_INTERVAL_ALPHA));
			} else if (!FUNC2(pmlmepriv, _FW_LINKED)) {
				pLed->bLedNoLinkBlinkInProgress = true;
				pLed->CurrLedState = LED_BLINK_SLOWLY;
				if (pLed->bLedOn)
					pLed->BlinkingLedState = LED_STATE_OFF;
				else
					pLed->BlinkingLedState = LED_STATE_ON;
				FUNC3(&pLed->BlinkTimer, jiffies +
					  FUNC4(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
			}
			pLed->BlinkTimes = 0;
			pLed->bLedBlinkInProgress = false;
		} else {
			if (pLed->bLedOn)
				pLed->BlinkingLedState = LED_STATE_OFF;
			else
				pLed->BlinkingLedState = LED_STATE_ON;
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_FASTER_INTERVAL_ALPHA));
		}
		break;
	case LED_BLINK_WPS:
		if (pLed->bLedOn)
			pLed->BlinkingLedState = LED_STATE_OFF;
		else
			pLed->BlinkingLedState = LED_STATE_ON;
		FUNC3(&pLed->BlinkTimer, jiffies +
			  FUNC4(LED_BLINK_SCAN_INTERVAL_ALPHA));
		break;
	case LED_BLINK_WPS_STOP:	/* WPS success */
		if (pLed->BlinkingLedState == LED_STATE_ON) {
			pLed->BlinkingLedState = LED_STATE_OFF;
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
			bStopBlinking = false;
		} else {
			bStopBlinking = true;
		}
		if (bStopBlinking) {
			pLed->bLedLinkBlinkInProgress = true;
			pLed->CurrLedState = LED_BLINK_NORMAL;
			if (pLed->bLedOn)
				pLed->BlinkingLedState = LED_STATE_OFF;
			else
				pLed->BlinkingLedState = LED_STATE_ON;
			FUNC3(&pLed->BlinkTimer, jiffies +
				  FUNC4(LED_BLINK_LINK_INTERVAL_ALPHA));
		}
		pLed->bLedWPSBlinkInProgress = false;
		break;
	default:
		break;
	}
}