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
typedef  int /*<<< orphan*/  u32 ;
struct qmp {size_t size; int /*<<< orphan*/  tx_lock; scalar_t__ offset; scalar_t__ msgram; int /*<<< orphan*/  dev; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC6 (struct qmp*) ; 
 long FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct qmp *qmp, const void *data, size_t len)
{
	long time_left;
	int ret;

	if (FUNC0(len + sizeof(u32) > qmp->size))
		return -EINVAL;

	if (FUNC0(len % sizeof(u32)))
		return -EINVAL;

	FUNC3(&qmp->tx_lock);

	/* The message RAM only implements 32-bit accesses */
	FUNC1(qmp->msgram + qmp->offset + sizeof(u32),
			 data, len / sizeof(u32));
	FUNC8(len, qmp->msgram + qmp->offset);
	FUNC5(qmp);

	time_left = FUNC7(qmp->event,
						     FUNC6(qmp), HZ);
	if (!time_left) {
		FUNC2(qmp->dev, "ucore did not ack channel\n");
		ret = -ETIMEDOUT;

		/* Clear message from buffer */
		FUNC8(0, qmp->msgram + qmp->offset);
	} else {
		ret = 0;
	}

	FUNC4(&qmp->tx_lock);

	return ret;
}