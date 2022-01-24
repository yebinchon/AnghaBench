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
struct esas2r_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CHPRST_DETECTED ; 
 int /*<<< orphan*/  AF_CHPRST_NEEDED ; 
 int /*<<< orphan*/  AF_CHPRST_STARTED ; 
 int /*<<< orphan*/  AF_DEGRADED_MODE ; 
 int /*<<< orphan*/  AF_FIRST_INIT ; 
 int /*<<< orphan*/  AF_POWER_MGT ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct esas2r_adapter *a)
{
	while (FUNC7(AF_CHPRST_DETECTED, &a->flags)) {
		/*
		 * Balance the enable in esas2r_initadapter_hw.
		 * Esas2r_power_down already took care of it for power
		 * management.
		 */
		if (!FUNC7(AF_DEGRADED_MODE, &a->flags) &&
		    !FUNC7(AF_POWER_MGT, &a->flags))
			FUNC2(a);

		/* Reinitialize the chip. */
		FUNC1(a);
		FUNC4(a, 0);

		if (FUNC7(AF_CHPRST_NEEDED, &a->flags))
			break;

		if (FUNC7(AF_POWER_MGT, &a->flags)) {
			/* Recovery from power management. */
			if (FUNC7(AF_FIRST_INIT, &a->flags)) {
				/* Chip reset during normal power up */
				FUNC5(ESAS2R_LOG_CRIT,
					   "The firmware was reset during a normal power-up sequence");
			} else {
				/* Deferred power up complete. */
				FUNC0(AF_POWER_MGT, &a->flags);
				FUNC6(a, true);
			}
		} else {
			/* Recovery from online chip reset. */
			if (FUNC7(AF_FIRST_INIT, &a->flags)) {
				/* Chip reset during driver load */
			} else {
				/* Chip reset after driver load */
				FUNC6(a, false);
			}

			FUNC5(ESAS2R_LOG_CRIT,
				   "Recovering from a chip reset while the chip was online");
		}

		FUNC0(AF_CHPRST_STARTED, &a->flags);
		FUNC3(a);

		/*
		 * Clear this flag last!  this indicates that the chip has been
		 * reset already during initialization.
		 */
		FUNC0(AF_CHPRST_DETECTED, &a->flags);
	}
}