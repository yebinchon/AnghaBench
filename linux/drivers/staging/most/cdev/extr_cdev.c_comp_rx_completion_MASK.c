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
struct mbo {int /*<<< orphan*/  hdm_channel_id; int /*<<< orphan*/  ifp; } ;
struct comp_channel {int /*<<< orphan*/  wq; int /*<<< orphan*/  fifo; int /*<<< orphan*/  unlink; int /*<<< orphan*/  dev; int /*<<< orphan*/  access_ref; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 struct comp_channel* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbo**,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mbo *mbo)
{
	struct comp_channel *c;

	if (!mbo)
		return -EINVAL;

	c = FUNC0(mbo->ifp, mbo->hdm_channel_id);
	if (!c)
		return -ENXIO;

	FUNC4(&c->unlink);
	if (!c->access_ref || !c->dev) {
		FUNC5(&c->unlink);
		return -ENODEV;
	}
	FUNC1(&c->fifo, &mbo, 1);
	FUNC5(&c->unlink);
#ifdef DEBUG_MESG
	if (kfifo_is_full(&c->fifo))
		pr_info("WARN: Fifo is full\n");
#endif
	FUNC6(&c->wq);
	return 0;
}