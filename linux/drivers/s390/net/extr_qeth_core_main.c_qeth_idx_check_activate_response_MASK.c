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
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct qeth_channel {TYPE_1__* ccwdev; } ;
struct qeth_card {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int EBUSY ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  QETH_IDX_ACT_ERR_AUTH 130 
#define  QETH_IDX_ACT_ERR_AUTH_USER 129 
#define  QETH_IDX_ACT_ERR_EXCL 128 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct qeth_card *card,
					    struct qeth_channel *channel,
					    struct qeth_cmd_buffer *iob)
{
	int rc;

	rc = FUNC6(card, iob->data);
	if (rc)
		return rc;

	if (FUNC4(iob->data))
		return 0;

	/* negative reply: */
	FUNC1(card, 2, "idxneg%c",
			FUNC3(iob->data));

	switch (FUNC3(iob->data)) {
	case QETH_IDX_ACT_ERR_EXCL:
		FUNC5(&channel->ccwdev->dev,
			"The adapter is used exclusively by another host\n");
		return -EBUSY;
	case QETH_IDX_ACT_ERR_AUTH:
	case QETH_IDX_ACT_ERR_AUTH_USER:
		FUNC5(&channel->ccwdev->dev,
			"Setting the device online failed because of insufficient authorization\n");
		return -EPERM;
	default:
		FUNC2(2, "IDX_ACTIVATE on channel %x: negative reply\n",
				 FUNC0(channel->ccwdev));
		return -EIO;
	}
}