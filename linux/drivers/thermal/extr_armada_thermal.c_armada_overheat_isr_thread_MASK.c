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
typedef  int /*<<< orphan*/  u32 ;
struct armada_thermal_priv {int current_threshold; int current_hysteresis; int /*<<< orphan*/  overheat_sensor; TYPE_1__* data; int /*<<< orphan*/  syscon; int /*<<< orphan*/  update_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dfx_irq_cause_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OVERHEAT_INT_POLL_DELAY_MS ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 int FUNC0 (struct armada_thermal_priv*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *blob)
{
	struct armada_thermal_priv *priv = blob;
	int low_threshold = priv->current_threshold - priv->current_hysteresis;
	int temperature;
	u32 dummy;
	int ret;

	/* Notify the core in thread context */
	FUNC6(priv->overheat_sensor,
				   THERMAL_EVENT_UNSPECIFIED);

	/*
	 * The overheat interrupt must be cleared by reading the DFX interrupt
	 * cause _after_ the temperature has fallen down to the low threshold.
	 * Otherwise future interrupts might not be served.
	 */
	do {
		FUNC2(OVERHEAT_INT_POLL_DELAY_MS);
		FUNC3(&priv->update_lock);
		ret = FUNC0(priv, &temperature);
		FUNC4(&priv->update_lock);
		if (ret)
			goto enable_irq;
	} while (temperature >= low_threshold);

	FUNC5(priv->syscon, priv->data->dfx_irq_cause_off, &dummy);

	/* Notify the thermal core that the temperature is acceptable again */
	FUNC6(priv->overheat_sensor,
				   THERMAL_EVENT_UNSPECIFIED);

enable_irq:
	FUNC1(irq);

	return IRQ_HANDLED;
}