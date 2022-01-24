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
struct iss_device {scalar_t__ ref_count; int /*<<< orphan*/  iss_mutex; int /*<<< orphan*/  crashed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct iss_device *iss)
{
	if (!iss)
		return;

	FUNC5(&iss->iss_mutex);
	FUNC0(iss->ref_count == 0);
	if (--iss->ref_count == 0) {
		FUNC2(iss);
		/* Reset the ISS if an entity has failed to stop. This is the
		 * only way to recover from such conditions, although it would
		 * be worth investigating whether resetting the ISP only can't
		 * fix the problem in some cases.
		 */
		if (!FUNC4(&iss->crashed))
			FUNC3(iss);
		FUNC1(iss);
	}
	FUNC6(&iss->iss_mutex);
}