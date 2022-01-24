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
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int intsts0; int intsts1; int brdysts; int nrdysts; int bempsts; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ATTCH ; 
 int BEMP ; 
 int /*<<< orphan*/  BEMPSTS ; 
 int BRDY ; 
 int /*<<< orphan*/  BRDYSTS ; 
 int CTRT ; 
 int DTCH ; 
 int DVST ; 
 int /*<<< orphan*/  INTSTS0 ; 
 int INTSTS0_MAGIC ; 
 int /*<<< orphan*/  INTSTS1 ; 
 int INTSTS1_MAGIC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  NRDYSTS ; 
 int SACK ; 
 int SIGN ; 
 int VBINT ; 
 int /*<<< orphan*/  irq_attch ; 
 int /*<<< orphan*/  irq_ctrl_stage ; 
 int /*<<< orphan*/  irq_dev_state ; 
 int /*<<< orphan*/  irq_dtch ; 
 int /*<<< orphan*/  irq_empty ; 
 int /*<<< orphan*/  irq_ready ; 
 int /*<<< orphan*/  irq_sack ; 
 int /*<<< orphan*/  irq_sign ; 
 int /*<<< orphan*/  irq_vbus ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_priv*,int /*<<< orphan*/ ,struct usbhs_priv*,struct usbhs_irq_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,int /*<<< orphan*/ ,struct usbhs_priv*,struct usbhs_irq_state*) ; 
 scalar_t__ FUNC2 (struct usbhs_priv*) ; 
 scalar_t__ FUNC3 (struct usbhs_priv*,struct usbhs_irq_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct usbhs_priv *priv = data;
	struct usbhs_irq_state irq_state;

	if (FUNC3(priv, &irq_state) < 0)
		return IRQ_NONE;

	/*
	 * clear interrupt
	 *
	 * The hardware is _very_ picky to clear interrupt bit.
	 * Especially INTSTS0_MAGIC, INTSTS1_MAGIC value.
	 *
	 * see
	 *	"Operation"
	 *	 - "Control Transfer (DCP)"
	 *	   - Function :: VALID bit should 0
	 */
	FUNC4(priv, INTSTS0, ~irq_state.intsts0 & INTSTS0_MAGIC);
	if (FUNC2(priv))
		FUNC4(priv, INTSTS1, ~irq_state.intsts1 & INTSTS1_MAGIC);

	/*
	 * The driver should not clear the xxxSTS after the line of
	 * "call irq callback functions" because each "if" statement is
	 * possible to call the callback function for avoiding any side effects.
	 */
	if (irq_state.intsts0 & BRDY)
		FUNC4(priv, BRDYSTS, ~irq_state.brdysts);
	FUNC4(priv, NRDYSTS, ~irq_state.nrdysts);
	if (irq_state.intsts0 & BEMP)
		FUNC4(priv, BEMPSTS, ~irq_state.bempsts);

	/*
	 * call irq callback functions
	 * see also
	 *	usbhs_irq_setting_update
	 */

	/* INTSTS0 */
	if (irq_state.intsts0 & VBINT)
		FUNC1(priv, irq_vbus, priv, &irq_state);

	if (irq_state.intsts0 & DVST)
		FUNC0(priv, irq_dev_state, priv, &irq_state);

	if (irq_state.intsts0 & CTRT)
		FUNC0(priv, irq_ctrl_stage, priv, &irq_state);

	if (irq_state.intsts0 & BEMP)
		FUNC0(priv, irq_empty, priv, &irq_state);

	if (irq_state.intsts0 & BRDY)
		FUNC0(priv, irq_ready, priv, &irq_state);

	if (FUNC2(priv)) {
		/* INTSTS1 */
		if (irq_state.intsts1 & ATTCH)
			FUNC0(priv, irq_attch, priv, &irq_state);

		if (irq_state.intsts1 & DTCH)
			FUNC0(priv, irq_dtch, priv, &irq_state);

		if (irq_state.intsts1 & SIGN)
			FUNC0(priv, irq_sign, priv, &irq_state);

		if (irq_state.intsts1 & SACK)
			FUNC0(priv, irq_sack, priv, &irq_state);
	}
	return IRQ_HANDLED;
}