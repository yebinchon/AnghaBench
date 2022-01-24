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
struct pwm_lookup {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwm_lookup_list ; 
 int /*<<< orphan*/  pwm_lookup_lock ; 

void FUNC3(struct pwm_lookup *table, size_t num)
{
	FUNC1(&pwm_lookup_lock);

	while (num--) {
		FUNC0(&table->list, &pwm_lookup_list);
		table++;
	}

	FUNC2(&pwm_lookup_lock);
}