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
struct rcar_sysc_ch {int /*<<< orphan*/  isr_bit; scalar_t__ chan_offs; int /*<<< orphan*/  chan_bit; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  PWRER_DELAY_US ; 
 scalar_t__ PWRER_OFFS ; 
 int PWRER_RETRIES ; 
 scalar_t__ SYSCIER ; 
 scalar_t__ SYSCIMR ; 
 scalar_t__ SYSCISCR ; 
 scalar_t__ SYSCISR ; 
 int /*<<< orphan*/  SYSCISR_DELAY_US ; 
 int SYSCISR_RETRIES ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ rcar_sysc_base ; 
 int /*<<< orphan*/  rcar_sysc_lock ; 
 int FUNC4 (struct rcar_sysc_ch const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct rcar_sysc_ch *sysc_ch, bool on)
{
	unsigned int isr_mask = FUNC0(sysc_ch->isr_bit);
	unsigned int chan_mask = FUNC0(sysc_ch->chan_bit);
	unsigned int status;
	unsigned long flags;
	int ret = 0;
	int k;

	FUNC5(&rcar_sysc_lock, flags);

	/*
	 * The interrupt source needs to be enabled, but masked, to prevent the
	 * CPU from receiving it.
	 */
	FUNC2(FUNC1(rcar_sysc_base + SYSCIMR) | isr_mask,
		  rcar_sysc_base + SYSCIMR);
	FUNC2(FUNC1(rcar_sysc_base + SYSCIER) | isr_mask,
		  rcar_sysc_base + SYSCIER);

	FUNC2(isr_mask, rcar_sysc_base + SYSCISCR);

	/* Submit power shutoff or resume request until it was accepted */
	for (k = 0; k < PWRER_RETRIES; k++) {
		ret = FUNC4(sysc_ch, on);
		if (ret)
			goto out;

		status = FUNC1(rcar_sysc_base +
				  sysc_ch->chan_offs + PWRER_OFFS);
		if (!(status & chan_mask))
			break;

		FUNC7(PWRER_DELAY_US);
	}

	if (k == PWRER_RETRIES) {
		ret = -EIO;
		goto out;
	}

	/* Wait until the power shutoff or resume request has completed * */
	for (k = 0; k < SYSCISR_RETRIES; k++) {
		if (FUNC1(rcar_sysc_base + SYSCISR) & isr_mask)
			break;
		FUNC7(SYSCISR_DELAY_US);
	}

	if (k == SYSCISR_RETRIES)
		ret = -EIO;

	FUNC2(isr_mask, rcar_sysc_base + SYSCISCR);

 out:
	FUNC6(&rcar_sysc_lock, flags);

	FUNC3("sysc power %s domain %d: %08x -> %d\n", on ? "on" : "off",
		 sysc_ch->isr_bit, FUNC1(rcar_sysc_base + SYSCISR), ret);
	return ret;
}