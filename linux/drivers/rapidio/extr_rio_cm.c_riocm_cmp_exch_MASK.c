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
struct rio_channel {int state; int /*<<< orphan*/  lock; } ;
typedef  enum rio_cm_state { ____Placeholder_rio_cm_state } rio_cm_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct rio_channel *ch,
			   enum rio_cm_state cmp, enum rio_cm_state exch)
{
	int ret;

	FUNC0(&ch->lock);
	ret = (ch->state == cmp);
	if (ret)
		ch->state = exch;
	FUNC1(&ch->lock);
	return ret;
}