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
struct led_priv {int /*<<< orphan*/  SwLed1; int /*<<< orphan*/  SwLed0; int /*<<< orphan*/  LedControlHandler; } ;
struct _adapter {struct led_priv ledpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_PIN_LED0 ; 
 int /*<<< orphan*/  LED_PIN_LED1 ; 
 int /*<<< orphan*/  LedControl871x ; 

void FUNC1(struct _adapter *padapter)
{
	struct led_priv	*pledpriv = &padapter->ledpriv;

	pledpriv->LedControlHandler = LedControl871x;
	FUNC0(padapter, &pledpriv->SwLed0, LED_PIN_LED0);
	FUNC0(padapter, &pledpriv->SwLed1, LED_PIN_LED1);
}