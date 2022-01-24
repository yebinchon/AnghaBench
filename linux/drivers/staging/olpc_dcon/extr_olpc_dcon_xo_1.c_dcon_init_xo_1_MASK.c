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
struct dcon_priv {scalar_t__ curr_src; scalar_t__ pending_src; TYPE_1__* client; } ;
struct dcon_gpio {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct dcon_gpio*) ; 
 int DCON_IRQ ; 
 scalar_t__ DCON_SOURCE_CPU ; 
 scalar_t__ DCON_SOURCE_DCON ; 
 int EIO ; 
 int /*<<< orphan*/  GPIO_EVENTS_ENABLE ; 
 int /*<<< orphan*/  GPIO_FE7_SEL ; 
 int /*<<< orphan*/  GPIO_FLTR7_AMOUNT ; 
 int /*<<< orphan*/  GPIO_INPUT_EVENT_COUNT ; 
 int /*<<< orphan*/  GPIO_INPUT_FILTER ; 
 int /*<<< orphan*/  GPIO_INPUT_INVERT ; 
 int /*<<< orphan*/  GPIO_NEGATIVE_EDGE_EN ; 
 int /*<<< orphan*/  GPIO_NEGATIVE_EDGE_STS ; 
 int /*<<< orphan*/  GPIO_OUTPUT_VAL ; 
 int /*<<< orphan*/  GPIO_POSITIVE_EDGE_STS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t OLPC_DCON_BLANK ; 
 size_t OLPC_DCON_IRQ ; 
 size_t OLPC_DCON_LOAD ; 
 size_t OLPC_DCON_STAT0 ; 
 size_t OLPC_DCON_STAT1 ; 
 int /*<<< orphan*/  OLPC_GPIO_DCON_BLANK ; 
 int /*<<< orphan*/  OLPC_GPIO_DCON_IRQ ; 
 int /*<<< orphan*/  OLPC_GPIO_DCON_LOAD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcon_interrupt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * gpios ; 
 struct dcon_gpio* gpios_asis ; 
 unsigned char FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct dcon_priv*) ; 

__attribute__((used)) static int FUNC15(struct dcon_priv *dcon)
{
	unsigned char lob;
	int ret, i;
	const struct dcon_gpio *pin = &gpios_asis[0];

	for (i = 0; i < FUNC0(gpios_asis); i++) {
		gpios[i] = FUNC8(&dcon->client->dev, pin[i].name,
					  pin[i].flags);
		if (FUNC1(gpios[i])) {
			ret = FUNC2(gpios[i]);
			FUNC13("failed to request %s GPIO: %d\n", pin[i].name,
			       ret);
			return ret;
		}
	}

	/* Turn off the event enable for GPIO7 just to be safe */
	FUNC3(OLPC_GPIO_DCON_IRQ, GPIO_EVENTS_ENABLE);

	/*
	 * Determine the current state by reading the GPIO bit; earlier
	 * stages of the boot process have established the state.
	 *
	 * Note that we read GPIO_OUTPUT_VAL rather than GPIO_READ_BACK here;
	 * this is because OFW will disable input for the pin and set a value..
	 * READ_BACK will only contain a valid value if input is enabled and
	 * then a value is set.  So, future readings of the pin can use
	 * READ_BACK, but the first one cannot.  Awesome, huh?
	 */
	dcon->curr_src = FUNC4(OLPC_GPIO_DCON_LOAD, GPIO_OUTPUT_VAL)
		? DCON_SOURCE_CPU
		: DCON_SOURCE_DCON;
	dcon->pending_src = dcon->curr_src;

	/* Set the directions for the GPIO pins */
	FUNC9(gpios[OLPC_DCON_STAT0]);
	FUNC9(gpios[OLPC_DCON_STAT1]);
	FUNC9(gpios[OLPC_DCON_IRQ]);
	FUNC9(gpios[OLPC_DCON_BLANK]);
	FUNC10(gpios[OLPC_DCON_LOAD],
			       dcon->curr_src == DCON_SOURCE_CPU);

	/* Set up the interrupt mappings */

	/* Set the IRQ to pair 2 */
	FUNC7(OLPC_GPIO_DCON_IRQ, 2, 0);

	/* Enable group 2 to trigger the DCON interrupt */
	FUNC6(2, DCON_IRQ);

	/* Select edge level for interrupt (in PIC) */
	lob = FUNC11(0x4d0);
	lob &= ~(1 << DCON_IRQ);
	FUNC12(lob, 0x4d0);

	/* Register the interrupt handler */
	if (FUNC14(DCON_IRQ, &dcon_interrupt, 0, "DCON", dcon)) {
		FUNC13("failed to request DCON's irq\n");
		return -EIO;
	}

	/* Clear INV_EN for GPIO7 (DCONIRQ) */
	FUNC3(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_INVERT);

	/* Enable filter for GPIO12 (DCONBLANK) */
	FUNC5(OLPC_GPIO_DCON_BLANK, GPIO_INPUT_FILTER);

	/* Disable filter for GPIO7 */
	FUNC3(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_FILTER);

	/* Disable event counter for GPIO7 (DCONIRQ) and GPIO12 (DCONBLANK) */
	FUNC3(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_EVENT_COUNT);
	FUNC3(OLPC_GPIO_DCON_BLANK, GPIO_INPUT_EVENT_COUNT);

	/* Add GPIO12 to the Filter Event Pair #7 */
	FUNC5(OLPC_GPIO_DCON_BLANK, GPIO_FE7_SEL);

	/* Turn off negative Edge Enable for GPIO12 */
	FUNC3(OLPC_GPIO_DCON_BLANK, GPIO_NEGATIVE_EDGE_EN);

	/* Enable negative Edge Enable for GPIO7 */
	FUNC5(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_EN);

	/* Zero the filter amount for Filter Event Pair #7 */
	FUNC5(0, GPIO_FLTR7_AMOUNT);

	/* Clear the negative edge status for GPIO7 and GPIO12 */
	FUNC5(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_STS);
	FUNC5(OLPC_GPIO_DCON_BLANK, GPIO_NEGATIVE_EDGE_STS);

	/* FIXME:  Clear the positive status as well, just to be sure */
	FUNC5(OLPC_GPIO_DCON_IRQ, GPIO_POSITIVE_EDGE_STS);
	FUNC5(OLPC_GPIO_DCON_BLANK, GPIO_POSITIVE_EDGE_STS);

	/* Enable events for GPIO7 (DCONIRQ) and GPIO12 (DCONBLANK) */
	FUNC5(OLPC_GPIO_DCON_IRQ, GPIO_EVENTS_ENABLE);
	FUNC5(OLPC_GPIO_DCON_BLANK, GPIO_EVENTS_ENABLE);

	return 0;
}