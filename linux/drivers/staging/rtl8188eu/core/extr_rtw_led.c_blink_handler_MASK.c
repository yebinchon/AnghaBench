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
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
struct LED_871x {struct adapter* padapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct LED_871x*) ; 

void FUNC1(struct LED_871x *pLed)
{
	struct adapter *padapter = pLed->padapter;

	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
		return;

	FUNC0(pLed);
}