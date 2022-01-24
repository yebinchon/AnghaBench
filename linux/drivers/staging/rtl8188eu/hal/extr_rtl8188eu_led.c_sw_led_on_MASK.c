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
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
struct LED_871x {int bLedOn; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_LEDCFG2 ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct adapter *padapter, struct LED_871x *pLed)
{
	u8 led_cfg;

	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
		return;
	led_cfg = FUNC1(padapter, REG_LEDCFG2);
	FUNC2(padapter, REG_LEDCFG2, (led_cfg & 0xf0) | FUNC0(5) | FUNC0(6));
	pLed->bLedOn = true;
}