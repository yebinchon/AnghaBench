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
struct ips_driver {int /*<<< orphan*/  dev; scalar_t__ gpu_turbo_enabled; scalar_t__ cpu_turbo_enabled; int /*<<< orphan*/  turbo_status_lock; scalar_t__ poll_turbo_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_ADJUST_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct ips_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC3 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC4 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC5 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC6 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC7 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC8 (struct ips_driver*) ; 
 int FUNC9 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC10 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC11 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct ips_driver*) ; 
 scalar_t__ FUNC14 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct ips_driver*) ; 

__attribute__((used)) static int FUNC20(void *data)
{
	struct ips_driver *ips = data;
	unsigned long flags;

	FUNC1(ips->dev, "starting ips-adjust thread\n");

	/*
	 * Adjust CPU and GPU clamps every 5s if needed.  Doing it more
	 * often isn't recommended due to ME interaction.
	 */
	do {
		bool cpu_busy = FUNC2(ips);
		bool gpu_busy = FUNC9(ips);

		FUNC17(&ips->turbo_status_lock, flags);
		if (ips->poll_turbo_status)
			FUNC19(ips);
		FUNC18(&ips->turbo_status_lock, flags);

		/* Update turbo status if necessary */
		if (ips->cpu_turbo_enabled)
			FUNC7(ips);
		else
			FUNC5(ips);

		if (ips->gpu_turbo_enabled)
			FUNC8(ips);
		else
			FUNC6(ips);

		/* We're outside our comfort zone, crank them down */
		if (FUNC14(ips)) {
			FUNC3(ips);
			FUNC10(ips);
			goto sleep;
		}

		if (!FUNC0(ips, 0) && cpu_busy)
			FUNC4(ips);
		else
			FUNC3(ips);

		if (!FUNC13(ips) && gpu_busy)
			FUNC11(ips);
		else
			FUNC10(ips);

sleep:
		FUNC16(FUNC15(IPS_ADJUST_PERIOD));
	} while (!FUNC12());

	FUNC1(ips->dev, "ips-adjust thread stopped\n");

	return 0;
}