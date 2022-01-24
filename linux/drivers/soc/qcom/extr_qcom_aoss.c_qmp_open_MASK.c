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
typedef  scalar_t__ u32 ;
struct qmp {scalar_t__ msgram; int /*<<< orphan*/  dev; int /*<<< orphan*/  event; scalar_t__ size; scalar_t__ offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ QMP_DESC_MCORE_CH_STATE ; 
 scalar_t__ QMP_DESC_MCORE_LINK_STATE ; 
 scalar_t__ QMP_DESC_MCORE_MBOX_OFFSET ; 
 scalar_t__ QMP_DESC_MCORE_MBOX_SIZE ; 
 scalar_t__ QMP_DESC_UCORE_CH_STATE_ACK ; 
 scalar_t__ QMP_DESC_UCORE_LINK_STATE ; 
 scalar_t__ QMP_DESC_UCORE_LINK_STATE_ACK ; 
 scalar_t__ QMP_DESC_VERSION ; 
 scalar_t__ QMP_STATE_DOWN ; 
 scalar_t__ QMP_STATE_UP ; 
 scalar_t__ QMP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC2 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC3 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC5 (struct qmp*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct qmp *qmp)
{
	int ret;
	u32 val;

	if (!FUNC3(qmp)) {
		FUNC0(qmp->dev, "QMP magic doesn't match\n");
		return -EINVAL;
	}

	val = FUNC6(qmp->msgram + QMP_DESC_VERSION);
	if (val != QMP_VERSION) {
		FUNC0(qmp->dev, "unsupported QMP version %d\n", val);
		return -EINVAL;
	}

	qmp->offset = FUNC6(qmp->msgram + QMP_DESC_MCORE_MBOX_OFFSET);
	qmp->size = FUNC6(qmp->msgram + QMP_DESC_MCORE_MBOX_SIZE);
	if (!qmp->size) {
		FUNC0(qmp->dev, "invalid mailbox size\n");
		return -EINVAL;
	}

	/* Ack remote core's link state */
	val = FUNC6(qmp->msgram + QMP_DESC_UCORE_LINK_STATE);
	FUNC8(val, qmp->msgram + QMP_DESC_UCORE_LINK_STATE_ACK);

	/* Set local core's link state to up */
	FUNC8(QMP_STATE_UP, qmp->msgram + QMP_DESC_MCORE_LINK_STATE);

	FUNC1(qmp);

	ret = FUNC7(qmp->event, FUNC2(qmp), HZ);
	if (!ret) {
		FUNC0(qmp->dev, "ucore didn't ack link\n");
		goto timeout_close_link;
	}

	FUNC8(QMP_STATE_UP, qmp->msgram + QMP_DESC_MCORE_CH_STATE);

	FUNC1(qmp);

	ret = FUNC7(qmp->event, FUNC5(qmp), HZ);
	if (!ret) {
		FUNC0(qmp->dev, "ucore didn't open channel\n");
		goto timeout_close_channel;
	}

	/* Ack remote core's channel state */
	FUNC8(QMP_STATE_UP, qmp->msgram + QMP_DESC_UCORE_CH_STATE_ACK);

	FUNC1(qmp);

	ret = FUNC7(qmp->event, FUNC4(qmp), HZ);
	if (!ret) {
		FUNC0(qmp->dev, "ucore didn't ack channel\n");
		goto timeout_close_channel;
	}

	return 0;

timeout_close_channel:
	FUNC8(QMP_STATE_DOWN, qmp->msgram + QMP_DESC_MCORE_CH_STATE);

timeout_close_link:
	FUNC8(QMP_STATE_DOWN, qmp->msgram + QMP_DESC_MCORE_LINK_STATE);
	FUNC1(qmp);

	return -ETIMEDOUT;
}