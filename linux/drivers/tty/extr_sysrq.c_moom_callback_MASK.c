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
struct oom_control {int order; int /*<<< orphan*/  const gfp_mask; int /*<<< orphan*/ * memcg; int /*<<< orphan*/ * nodemask; int /*<<< orphan*/  zonelist; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  first_memory_node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  oom_lock ; 
 int /*<<< orphan*/  FUNC3 (struct oom_control*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct work_struct *ignored)
{
	const gfp_t gfp_mask = GFP_KERNEL;
	struct oom_control oc = {
		.zonelist = FUNC2(first_memory_node, gfp_mask),
		.nodemask = NULL,
		.memcg = NULL,
		.gfp_mask = gfp_mask,
		.order = -1,
	};

	FUNC0(&oom_lock);
	if (!FUNC3(&oc))
		FUNC4("OOM request ignored. No task eligible\n");
	FUNC1(&oom_lock);
}