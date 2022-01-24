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
struct wa_rpipe {int /*<<< orphan*/  seg_list; int /*<<< orphan*/  segs_available; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct wa_rpipe *rpipe)
{
	return FUNC0(&rpipe->segs_available) > 0
		&& !FUNC1(&rpipe->seg_list);
}