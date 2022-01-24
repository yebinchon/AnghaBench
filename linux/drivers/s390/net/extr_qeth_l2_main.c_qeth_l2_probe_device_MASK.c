#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {int /*<<< orphan*/  rx_mode_work; int /*<<< orphan*/  mac_htable; } ;
struct TYPE_3__ {int /*<<< orphan*/ * type; } ;
struct ccwgroup_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_generic_devtype ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  qeth_l2_rx_mode_work ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC5(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC1(&gdev->dev);
	int rc;

	FUNC4(card);

	if (gdev->dev.type == &qeth_generic_devtype) {
		rc = FUNC3(&gdev->dev);
		if (rc)
			return rc;
	}

	FUNC2(card->mac_htable);
	FUNC0(&card->rx_mode_work, qeth_l2_rx_mode_work);
	return 0;
}