#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct con3270 {int /*<<< orphan*/  nr_lines; int /*<<< orphan*/  lines; TYPE_1__* cline; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct con3270*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct con3270 *cp)
{
	if (!FUNC2(&cp->cline->list))
		/* Already added. */
		return;
	FUNC1(&cp->cline->list, &cp->lines);
	cp->nr_lines++;
	FUNC0(cp);
}