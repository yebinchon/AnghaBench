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
struct reset_control_array {int num_rstcs; int /*<<< orphan*/ * rstc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct reset_control_array*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_list_mutex ; 

__attribute__((used)) static void FUNC4(struct reset_control_array *resets)
{
	int i;

	FUNC2(&reset_list_mutex);
	for (i = 0; i < resets->num_rstcs; i++)
		FUNC0(resets->rstc[i]);
	FUNC3(&reset_list_mutex);
	FUNC1(resets);
}