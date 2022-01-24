#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {int /*<<< orphan*/  rx_mode_work; int /*<<< orphan*/  ip_mc_htable; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_htable; } ;
struct TYPE_4__ {int /*<<< orphan*/ * type; } ;
struct ccwgroup_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_generic_devtype ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  qeth_l3_rx_mode_work ; 

__attribute__((used)) static int FUNC8(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC3(&gdev->dev);
	int rc;

	FUNC5(card->ip_htable);
	FUNC6(&card->ip_lock);
	card->cmd_wq = FUNC1("%s_cmd", 0,
					       FUNC4(&gdev->dev));
	if (!card->cmd_wq)
		return -ENOMEM;

	if (gdev->dev.type == &qeth_generic_devtype) {
		rc = FUNC7(&gdev->dev);
		if (rc) {
			FUNC2(card->cmd_wq);
			return rc;
		}
	}

	FUNC5(card->ip_mc_htable);
	FUNC0(&card->rx_mode_work, qeth_l3_rx_mode_work);
	return 0;
}