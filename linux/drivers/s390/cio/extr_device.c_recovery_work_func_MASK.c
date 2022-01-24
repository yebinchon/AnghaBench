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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccw_bus_type ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  recovery_check ; 
 int* recovery_delay ; 
 int /*<<< orphan*/  recovery_lock ; 
 int recovery_phase ; 
 int /*<<< orphan*/  recovery_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct work_struct *unused)
{
	int redo = 0;

	FUNC2(&ccw_bus_type, NULL, &redo, recovery_check);
	if (redo) {
		FUNC4(&recovery_lock);
		if (!FUNC6(&recovery_timer)) {
			if (recovery_phase < FUNC0(recovery_delay) - 1)
				recovery_phase++;
			FUNC3(&recovery_timer, jiffies +
				  recovery_delay[recovery_phase] * HZ);
		}
		FUNC5(&recovery_lock);
	} else
		FUNC1(3, "recovery: end\n");
}