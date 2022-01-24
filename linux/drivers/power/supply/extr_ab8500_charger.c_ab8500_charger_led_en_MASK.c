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
struct ab8500_charger {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_CHARGER ; 
 int /*<<< orphan*/  AB8500_LED_INDICATOR_PWM_CTRL ; 
 int /*<<< orphan*/  AB8500_LED_INDICATOR_PWM_DUTY ; 
 int LED_INDICATOR_PWM_DIS ; 
 int LED_INDICATOR_PWM_DUTY_252_256 ; 
 int LED_INDICATOR_PWM_ENA ; 
 int LED_IND_CUR_5MA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct ab8500_charger *di, int on)
{
	int ret;

	if (on) {
		/* Power ON charging LED indicator, set LED current to 5mA */
		ret = FUNC0(di->dev, AB8500_CHARGER,
			AB8500_LED_INDICATOR_PWM_CTRL,
			(LED_IND_CUR_5MA | LED_INDICATOR_PWM_ENA));
		if (ret) {
			FUNC1(di->dev, "Power ON LED failed\n");
			return ret;
		}
		/* LED indicator PWM duty cycle 252/256 */
		ret = FUNC0(di->dev, AB8500_CHARGER,
			AB8500_LED_INDICATOR_PWM_DUTY,
			LED_INDICATOR_PWM_DUTY_252_256);
		if (ret) {
			FUNC1(di->dev, "Set LED PWM duty cycle failed\n");
			return ret;
		}
	} else {
		/* Power off charging LED indicator */
		ret = FUNC0(di->dev, AB8500_CHARGER,
			AB8500_LED_INDICATOR_PWM_CTRL,
			LED_INDICATOR_PWM_DIS);
		if (ret) {
			FUNC1(di->dev, "Power-off LED failed\n");
			return ret;
		}
	}

	return ret;
}