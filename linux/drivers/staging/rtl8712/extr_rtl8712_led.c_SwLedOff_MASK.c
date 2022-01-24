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
struct _adapter {scalar_t__ driver_stopped; scalar_t__ surprise_removed; } ;
struct LED_871x {int LedPin; int bLedOn; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  LEDCFG ; 
#define  LED_PIN_GPIO0 130 
#define  LED_PIN_LED0 129 
#define  LED_PIN_LED1 128 
 int FUNC1 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct _adapter *padapter, struct LED_871x *pLed)
{
	u8	LedCfg;

	if (padapter->surprise_removed || padapter->driver_stopped)
		return;
	LedCfg = FUNC1(padapter, LEDCFG);
	switch (pLed->LedPin) {
	case LED_PIN_GPIO0:
		break;
	case LED_PIN_LED0:
		LedCfg &= 0xf0; /* Set to software control.*/
		FUNC2(padapter, LEDCFG, (LedCfg | FUNC0(3)));
		break;
	case LED_PIN_LED1:
		LedCfg &= 0x0f; /* Set to software control.*/
		FUNC2(padapter, LEDCFG, (LedCfg | FUNC0(7)));
		break;
	default:
		break;
	}
	pLed->bLedOn = false;
}