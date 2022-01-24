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
struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {int frame_end; int /*<<< orphan*/  vsync_completion; int /*<<< orphan*/  frame_end_wait; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long LDINTR_FS ; 
 unsigned long LDINTR_STATUS_MASK ; 
 unsigned long LDINTR_VEE ; 
 unsigned long LDINTR_VES ; 
 int LDSR_MSS ; 
 int /*<<< orphan*/  _LDINTR ; 
 int /*<<< orphan*/  _LDSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sh_mobile_lcdc_chan*) ; 
 int FUNC3 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct sh_mobile_lcdc_priv *priv = data;
	struct sh_mobile_lcdc_chan *ch;
	unsigned long ldintr;
	int is_sub;
	int k;

	/* Acknowledge interrupts and disable further VSYNC End IRQs. */
	ldintr = FUNC3(priv, _LDINTR);
	FUNC4(priv, _LDINTR, (ldintr ^ LDINTR_STATUS_MASK) & ~LDINTR_VEE);

	/* figure out if this interrupt is for main or sub lcd */
	is_sub = (FUNC3(priv, _LDSR) & LDSR_MSS) ? 1 : 0;

	/* wake up channel and disable clocks */
	for (k = 0; k < FUNC0(priv->ch); k++) {
		ch = &priv->ch[k];

		if (!ch->enabled)
			continue;

		/* Frame End */
		if (ldintr & LDINTR_FS) {
			if (is_sub == FUNC2(ch)) {
				ch->frame_end = 1;
				FUNC6(&ch->frame_end_wait);

				FUNC5(priv);
			}
		}

		/* VSYNC End */
		if (ldintr & LDINTR_VES)
			FUNC1(&ch->vsync_completion);
	}

	return IRQ_HANDLED;
}