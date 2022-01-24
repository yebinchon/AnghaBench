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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  sclp_vt220_lock ; 
 scalar_t__ sclp_vt220_queue_running ; 
 int /*<<< orphan*/  sclp_vt220_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long flags;

	FUNC2();
	FUNC3(&sclp_vt220_lock, flags);
	if (FUNC5(&sclp_vt220_timer))
		FUNC0(&sclp_vt220_timer);
	while (sclp_vt220_queue_running) {
		FUNC4(&sclp_vt220_lock, flags);
		FUNC1();
		FUNC3(&sclp_vt220_lock, flags);
	}
	FUNC4(&sclp_vt220_lock, flags);
}