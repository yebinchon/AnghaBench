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
struct gigaset_driver {unsigned int minors; int /*<<< orphan*/  lock; struct cardstate* cs; scalar_t__ blocked; } ;
struct cardstate {int flags; } ;

/* Variables and functions */
 int VALID_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct cardstate *FUNC2(struct gigaset_driver *drv)
{
	unsigned long flags;
	unsigned i;
	struct cardstate *cs;
	struct cardstate *ret = NULL;

	FUNC0(&drv->lock, flags);
	if (drv->blocked)
		goto exit;
	for (i = 0; i < drv->minors; ++i) {
		cs = drv->cs + i;
		if (!(cs->flags & VALID_MINOR)) {
			cs->flags = VALID_MINOR;
			ret = cs;
			break;
		}
	}
exit:
	FUNC1(&drv->lock, flags);
	return ret;
}